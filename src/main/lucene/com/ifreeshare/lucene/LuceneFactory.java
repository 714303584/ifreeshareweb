package com.ifreeshare.lucene;

import java.io.IOException;
import java.nio.file.Paths;

import org.apache.lucene.analysis.Analyzer;
import org.apache.lucene.document.Document;
import org.apache.lucene.document.FieldType;
import org.apache.lucene.index.DirectoryReader;
import org.apache.lucene.index.DocValuesType;
import org.apache.lucene.index.IndexOptions;
import org.apache.lucene.index.IndexReader;
import org.apache.lucene.index.IndexWriter;
import org.apache.lucene.index.IndexWriterConfig;
import org.apache.lucene.index.IndexWriterConfig.OpenMode;
import org.apache.lucene.queryparser.classic.MultiFieldQueryParser;
import org.apache.lucene.queryparser.classic.ParseException;
import org.apache.lucene.search.BooleanClause.Occur;
import org.apache.lucene.search.IndexSearcher;
import org.apache.lucene.search.Query;
import org.apache.lucene.search.ScoreDoc;
import org.apache.lucene.search.TopDocs;
import org.apache.lucene.store.Directory;
import org.apache.lucene.store.FSDirectory;
import org.wltea.analyzer.lucene.IKAnalyzer4Lucene5;

public class LuceneFactory {
	
	private static Directory indexDir ;
	
	private static IndexWriter indexWriter = null;
	
	private static IndexReader indexReader = null;
	
	static{
		try {
			//
			indexDir = FSDirectory.open(Paths.get("D:\\lucene"));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public static  IndexWriter getIndexWriter(OpenMode createOrAppend){
		if(indexWriter != null) return indexWriter;
		Analyzer analyzer = new IKAnalyzer4Lucene5();
    	IndexWriterConfig conf = new IndexWriterConfig(analyzer);
    	conf.setOpenMode(OpenMode.CREATE_OR_APPEND);
    	try {
			indexWriter = new IndexWriter(indexDir, conf);
		} catch (IOException e) {
			e.printStackTrace();
		}
    	return indexWriter;
	}
	
	
	public static IndexReader getIndexReader(){
//		if(indexReader != null){
//			return indexReader;
//		}else{
			try {
				indexReader = DirectoryReader.open(indexDir);
			} catch (IOException e) {
				e.printStackTrace();
				return null;
			}
			return indexReader;
//		}
	}
	
	public static void writerDocument(Document doc){
		try {
			indexWriter.addDocument(doc);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public static  IndexSearcher getIndexSearcher()  
	{  
		return new IndexSearcher(getIndexReader());  
	} 
	
	public static Document[]  search(String[] value,int numb,String[] field,Occur[] occur ,ScoreDoc after){
		Query query = null;
		IndexSearcher searcher = null;
		searcher = getIndexSearcher();
		try {
			query = MultiFieldQueryParser.parse(value, field, occur, new IKAnalyzer4Lucene5());
			TopDocs docs = searcher.searchAfter(after,query, numb);
		
			ScoreDoc[] scoreDocs =  docs.scoreDocs;
			Document[] documents = new Document[scoreDocs.length];
			for (int i = 0; i < scoreDocs.length; i++) {
	           Document document = searcher.doc(scoreDocs[i].doc); 
	           documents[i] = document;
			}
			after = scoreDocs[scoreDocs.length-1];
			 return documents;
		} catch (ParseException e) {
			e.printStackTrace();
			return null;
		} catch (IOException e) {
			e.printStackTrace();
			return null;
		}
		
		
	}
	
	
	public static void main(String[] args) {
		ScoreDoc after = null;
	
		LuceneFactory.search(after);
	}
	
	
	public static void search(ScoreDoc after){
		String[] value = {"少女","少女","txt"};
		String[] field = {"fileName","content","type"};
		Occur[] occur = {Occur.SHOULD,Occur.SHOULD,Occur.MUST};
		
		Document[] documents = LuceneFactory.search(value, 1000, field,occur, after);
		
		for (int i = 0; i < documents.length; i++) {
			Document document = documents[i];
			System.out.println(document.get("fileName"));
			
		}
		
		if(documents.length >= 1000){
			search(after);
		}else{
			return;
		}
	}
	
	
	
	public static FieldType getFieldType(DocValuesType docValuesType,IndexOptions indexOptions){
		FieldType result = new FieldType();
		result.setDocValuesType(docValuesType);
		result.setIndexOptions(indexOptions);
		return result;
	}
	
	
	
	

}
