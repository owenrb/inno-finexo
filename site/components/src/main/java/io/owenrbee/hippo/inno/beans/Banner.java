package io.owenrbee.hippo.inno.beans;
/*
 * Copyright 2014-2023 Bloomreach
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *  http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import org.onehippo.cms7.essentials.dashboard.annotations.HippoEssentialsGenerated;
import org.hippoecm.hst.content.beans.Node;
import org.hippoecm.hst.content.beans.standard.HippoHtml;
import org.hippoecm.hst.content.beans.standard.HippoGalleryImageSet;
import org.hippoecm.hst.content.beans.standard.HippoBean;

@HippoEssentialsGenerated(internalName = "innofinexo:bannerdocument")
@Node(jcrType = "innofinexo:bannerdocument")
public class Banner extends BaseDocument {
	@HippoEssentialsGenerated(internalName = "innofinexo:title")
	public String getTitle() {
		return getSingleProperty("innofinexo:title");
	}

	@HippoEssentialsGenerated(internalName = "innofinexo:content")
	public HippoHtml getContent() {
		return getHippoHtml("innofinexo:content");
	}

	@HippoEssentialsGenerated(internalName = "innofinexo:image")
	public HippoGalleryImageSet getImage() {
		return getLinkedBean("innofinexo:image", HippoGalleryImageSet.class);
	}

	@HippoEssentialsGenerated(internalName = "innofinexo:link")
	public HippoBean getLink() {
		return getLinkedBean("innofinexo:link", HippoBean.class);
	}
}
