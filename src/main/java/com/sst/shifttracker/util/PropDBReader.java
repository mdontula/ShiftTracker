package com.sst.shifttracker.util;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Properties;

import org.springframework.core.io.Resource;

public class PropDBReader {

	private	Properties props = null;
	
	public PropDBReader(Resource fileLocation){
		Properties dbProperties=null;
		FileInputStream fr=null;
		try {
			 fr =  new FileInputStream(fileLocation.getFile());
			dbProperties=new Properties();
			dbProperties.load(fr);
			props=dbProperties;
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}finally{
			if (fr!=null) {
				try {
					fr.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
	}

	public Properties getProps() {
		return props;
	}

	public void setProps(Properties props) {
		this.props = props;
	}
}