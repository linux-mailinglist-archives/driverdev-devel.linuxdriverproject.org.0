Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DC42292BE4
	for <lists+driverdev-devel@lfdr.de>; Mon, 19 Oct 2020 18:51:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BE02786CEF;
	Mon, 19 Oct 2020 16:51:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OlOfbz5LfkQi; Mon, 19 Oct 2020 16:51:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6E61586CF5;
	Mon, 19 Oct 2020 16:51:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0BB731BF3D4
 for <devel@linuxdriverproject.org>; Mon, 19 Oct 2020 16:51:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 07E4286CEF
 for <devel@linuxdriverproject.org>; Mon, 19 Oct 2020 16:51:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id e_tguXD6GzVg for <devel@linuxdriverproject.org>;
 Mon, 19 Oct 2020 16:51:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5456D869EB
 for <devel@driverdev.osuosl.org>; Mon, 19 Oct 2020 16:51:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1603126282;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:content-type:content-type;
 bh=cBZ9UFopWvddrponmuXiWqW0rfQhlFg5Q+4GTd5bmAo=;
 b=cru0fY5Nmo8SGXKc/HnjS6WE8x7LboAKwaxXCRQNOwoNU98tQ+2Si5VPGHcCKFodimZqXV
 LyQwqpFuIUgJ40fecj1OvxSlR8wFiubqcEcj9QpU10YUZK1+rlLjLSxYHUz3ZOQON2sJ5w
 alA4p6sHhrP2AJU4iKnxjM5/FVEXLsU=
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-258-LYyJa73eOLagG77CV--nwg-1; Mon, 19 Oct 2020 12:51:18 -0400
X-MC-Unique: LYyJa73eOLagG77CV--nwg-1
Received: by mail-qv1-f71.google.com with SMTP id ec4so286864qvb.21
 for <devel@driverdev.osuosl.org>; Mon, 19 Oct 2020 09:51:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=cBZ9UFopWvddrponmuXiWqW0rfQhlFg5Q+4GTd5bmAo=;
 b=nM5CUsJoAWZql11PrlBUq7YToiG3X09NrtQwivz6Mk2DTLsE85wpH7mT/k0VHF+1HO
 hN88eydzSsBS9vxAWu/jTHOhx+FV1bPNgUdvmNSqiLJOdf21dSQMlLFdYUpQCI8Grogj
 RXzRHI6ekIF9vvnmkyE4LIkWtKtG+742P5JTQTtAzrj4NuUHAl2fMIDYWn4tzmRF2EMb
 mjy2mWWr3hv8PipL04Ku8U6fxSTlvdsEzJfPjAvOLcUjETjRvmrOoVTpAfJU4nwSYV6P
 LuiYtvVrQbgsEO/At0eCtWLe4AB4SGwLHkFrFLT1AHqHomWK9NiOhbgdZL44Z6dOAzwF
 BOPA==
X-Gm-Message-State: AOAM5321B91OCkC68RJ8sGVyuEp5ZKW2vRwQgi40b3F6Di7XkCbLlU/7
 jp9p3vtflTvMyvthtd5Rb22nenuJlG2hPPgxpusla9XowkXoUhi2cRGNRI83xOJ5yKduOuoM5BB
 p6spL1fVy2mVYSdOemhpyWw==
X-Received: by 2002:a05:622a:104:: with SMTP id
 u4mr315304qtw.163.1603126277742; 
 Mon, 19 Oct 2020 09:51:17 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwbhcgQbY1OZQlcVsbQuE3XX8qH7dztlppht2P4xC4jw0d8uYlcSYrjBYxCxD+5Nytdis8Tqw==
X-Received: by 2002:a05:622a:104:: with SMTP id
 u4mr315280qtw.163.1603126277499; 
 Mon, 19 Oct 2020 09:51:17 -0700 (PDT)
Received: from trix.remote.csb (075-142-250-213.res.spectrum.com.
 [75.142.250.213])
 by smtp.gmail.com with ESMTPSA id s17sm171788qta.26.2020.10.19.09.51.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 19 Oct 2020 09:51:16 -0700 (PDT)
From: trix@redhat.com
To: martyn@welchs.me.uk, manohar.vanga@gmail.com, gregkh@linuxfoundation.org,
 arnd@arndb.de
Subject: [PATCH] vme: remove unneeded break
Date: Mon, 19 Oct 2020 09:51:12 -0700
Message-Id: <20201019165112.29091-1-trix@redhat.com>
X-Mailer: git-send-email 2.18.1
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=trix@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-BeenThere: driverdev-devel@linuxdriverproject.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux Driver Project Developer List
 <driverdev-devel.linuxdriverproject.org>
List-Unsubscribe: <http://driverdev.linuxdriverproject.org/mailman/options/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=unsubscribe>
List-Archive: <http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/>
List-Post: <mailto:driverdev-devel@linuxdriverproject.org>
List-Help: <mailto:driverdev-devel-request@linuxdriverproject.org?subject=help>
List-Subscribe: <http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=subscribe>
Cc: devel@driverdev.osuosl.org, Tom Rix <trix@redhat.com>,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Tom Rix <trix@redhat.com>

A break is not needed if it is preceded by a return or goto

Signed-off-by: Tom Rix <trix@redhat.com>
---
 drivers/vme/bridges/vme_tsi148.c | 7 -------
 drivers/vme/vme.c                | 9 ---------
 2 files changed, 16 deletions(-)

diff --git a/drivers/vme/bridges/vme_tsi148.c b/drivers/vme/bridges/vme_tsi148.c
index 50ae26977a02..1227ea937059 100644
--- a/drivers/vme/bridges/vme_tsi148.c
+++ b/drivers/vme/bridges/vme_tsi148.c
@@ -506,7 +506,6 @@ static int tsi148_slave_set(struct vme_slave_resource *image, int enabled,
 	default:
 		dev_err(tsi148_bridge->parent, "Invalid address space\n");
 		return -EINVAL;
-		break;
 	}
 
 	/* Convert 64-bit variables to 2x 32-bit variables */
@@ -995,7 +994,6 @@ static int tsi148_master_set(struct vme_master_resource *image, int enabled,
 		dev_err(tsi148_bridge->parent, "Invalid address space\n");
 		retval = -EINVAL;
 		goto err_aspace;
-		break;
 	}
 
 	temp_ctl &= ~(3<<4);
@@ -1503,7 +1501,6 @@ static int tsi148_dma_set_vme_src_attributes(struct device *dev, __be32 *attr,
 	default:
 		dev_err(dev, "Invalid address space\n");
 		return -EINVAL;
-		break;
 	}
 
 	if (cycle & VME_SUPER)
@@ -1603,7 +1600,6 @@ static int tsi148_dma_set_vme_dest_attributes(struct device *dev, __be32 *attr,
 	default:
 		dev_err(dev, "Invalid address space\n");
 		return -EINVAL;
-		break;
 	}
 
 	if (cycle & VME_SUPER)
@@ -1701,7 +1697,6 @@ static int tsi148_dma_list_add(struct vme_dma_list *list,
 		dev_err(tsi148_bridge->parent, "Invalid source type\n");
 		retval = -EINVAL;
 		goto err_source;
-		break;
 	}
 
 	/* Assume last link - this will be over-written by adding another */
@@ -1738,7 +1733,6 @@ static int tsi148_dma_list_add(struct vme_dma_list *list,
 		dev_err(tsi148_bridge->parent, "Invalid destination type\n");
 		retval = -EINVAL;
 		goto err_dest;
-		break;
 	}
 
 	/* Fill out count */
@@ -1964,7 +1958,6 @@ static int tsi148_lm_set(struct vme_lm_resource *lm, unsigned long long lm_base,
 		mutex_unlock(&lm->mtx);
 		dev_err(tsi148_bridge->parent, "Invalid address space\n");
 		return -EINVAL;
-		break;
 	}
 
 	if (cycle & VME_SUPER)
diff --git a/drivers/vme/vme.c b/drivers/vme/vme.c
index b398293980b6..e1a940e43327 100644
--- a/drivers/vme/vme.c
+++ b/drivers/vme/vme.c
@@ -52,23 +52,18 @@ static struct vme_bridge *find_bridge(struct vme_resource *resource)
 	case VME_MASTER:
 		return list_entry(resource->entry, struct vme_master_resource,
 			list)->parent;
-		break;
 	case VME_SLAVE:
 		return list_entry(resource->entry, struct vme_slave_resource,
 			list)->parent;
-		break;
 	case VME_DMA:
 		return list_entry(resource->entry, struct vme_dma_resource,
 			list)->parent;
-		break;
 	case VME_LM:
 		return list_entry(resource->entry, struct vme_lm_resource,
 			list)->parent;
-		break;
 	default:
 		printk(KERN_ERR "Unknown resource type\n");
 		return NULL;
-		break;
 	}
 }
 
@@ -179,7 +174,6 @@ size_t vme_get_size(struct vme_resource *resource)
 			return 0;
 
 		return size;
-		break;
 	case VME_SLAVE:
 		retval = vme_slave_get(resource, &enabled, &base, &size,
 			&buf_base, &aspace, &cycle);
@@ -187,14 +181,11 @@ size_t vme_get_size(struct vme_resource *resource)
 			return 0;
 
 		return size;
-		break;
 	case VME_DMA:
 		return 0;
-		break;
 	default:
 		printk(KERN_ERR "Unknown resource type\n");
 		return 0;
-		break;
 	}
 }
 EXPORT_SYMBOL(vme_get_size);
-- 
2.18.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
