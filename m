Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CC47298CD6
	for <lists+driverdev-devel@lfdr.de>; Mon, 26 Oct 2020 13:25:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A91032E103;
	Mon, 26 Oct 2020 12:25:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rsDtYVU4KyOP; Mon, 26 Oct 2020 12:25:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 04FFE2E0E0;
	Mon, 26 Oct 2020 12:25:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 52D511BF956
 for <devel@linuxdriverproject.org>; Mon, 26 Oct 2020 12:25:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4FA21858FB
 for <devel@linuxdriverproject.org>; Mon, 26 Oct 2020 12:25:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Z0HdavsVm1xD for <devel@linuxdriverproject.org>;
 Mon, 26 Oct 2020 12:25:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from szxga04-in.huawei.com (szxga04-in.huawei.com [45.249.212.190])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C8621858D3
 for <devel@driverdev.osuosl.org>; Mon, 26 Oct 2020 12:25:04 +0000 (UTC)
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.59])
 by szxga04-in.huawei.com (SkyGuard) with ESMTP id 4CKYtw35j0zkYCq;
 Mon, 26 Oct 2020 20:24:56 +0800 (CST)
Received: from huawei.com (10.90.53.225) by DGGEMS414-HUB.china.huawei.com
 (10.3.19.214) with Microsoft SMTP Server id 14.3.487.0; Mon, 26 Oct 2020
 20:24:46 +0800
From: Zhang Qilong <zhangqilong3@huawei.com>
To: <martyn@welchs.me.uk>, <manohar.vanga@gmail.com>,
 <gregkh@linuxfoundation.org>
Subject: [PATCH -next] vme: remove unnecessary breaks
Date: Mon, 26 Oct 2020 20:35:30 +0800
Message-ID: <20201026123530.18823-1-zhangqilong3@huawei.com>
X-Mailer: git-send-email 2.26.0.106.g9fadedd
MIME-Version: 1.0
X-Originating-IP: [10.90.53.225]
X-CFilter-Loop: Reflected
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
Cc: devel@driverdev.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The 'break' is unnecessary because of previous
'return', discard it.

Signed-off-by: Zhang Qilong <zhangqilong3@huawei.com>
---
 drivers/vme/vme.c | 9 ---------
 1 file changed, 9 deletions(-)

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
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
