Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FF002E2A77
	for <lists+driverdev-devel@lfdr.de>; Fri, 25 Dec 2020 09:46:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9FA3F2043D;
	Fri, 25 Dec 2020 08:46:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bKh+5zt6hR6t; Fri, 25 Dec 2020 08:46:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 866232010B;
	Fri, 25 Dec 2020 08:46:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2BBD81BF285
 for <devel@linuxdriverproject.org>; Fri, 25 Dec 2020 08:46:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 27EAF2010B
 for <devel@linuxdriverproject.org>; Fri, 25 Dec 2020 08:46:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GjqZES3xnr7R for <devel@linuxdriverproject.org>;
 Fri, 25 Dec 2020 08:46:41 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from cstnet.cn (smtp23.cstnet.cn [159.226.251.23])
 by silver.osuosl.org (Postfix) with ESMTP id 2F14920028
 for <devel@driverdev.osuosl.org>; Fri, 25 Dec 2020 08:46:40 +0000 (UTC)
Received: from localhost.localdomain (unknown [124.16.141.241])
 by APP-03 (Coremail) with SMTP id rQCowADXTPj9pOVfX+OnAA--.33235S2;
 Fri, 25 Dec 2020 16:38:21 +0800 (CST)
From: Xu Wang <vulab@iscas.ac.cn>
To: mchehab@kernel.org, sakari.ailus@linux.intel.com,
 gregkh@linuxfoundation.org, linux-media@vger.kernel.org,
 devel@driverdev.osuosl.org
Subject: [PATCH] media: atomisp: Remove redundant NULL check
Date: Fri, 25 Dec 2020 08:38:18 +0000
Message-Id: <20201225083818.64588-1-vulab@iscas.ac.cn>
X-Mailer: git-send-email 2.17.1
X-CM-TRANSID: rQCowADXTPj9pOVfX+OnAA--.33235S2
X-Coremail-Antispam: 1UD129KBjvJXoW7ZF13uw1xuFW7KrW7Ww1kuFg_yoW8JFW3pa
 y8Z3W7G3yUXF1jyrsrXws7ZFW5AayftF1UKa4q93WfCw13t3WfZF1akF15JF1rtw45W3y5
 Z3WrXrW3Ww1qyFDanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
 9KBjDU0xBIdaVrnRJUUUkIb7Iv0xC_tr1lb4IE77IF4wAFF20E14v26r1j6r4UM7CY07I2
 0VC2zVCF04k26cxKx2IYs7xG6rWj6s0DM7CIcVAFz4kK6r1j6r18M28lY4IEw2IIxxk0rw
 A2F7IY1VAKz4vEj48ve4kI8wA2z4x0Y4vE2Ix0cI8IcVAFwI0_Xr0_Ar1l84ACjcxK6xII
 jxv20xvEc7CjxVAFwI0_Gr0_Cr1l84ACjcxK6I8E87Iv67AKxVWxJr0_GcWl84ACjcxK6I
 8E87Iv6xkF7I0E14v26rxl6s0DM2AIxVAIcxkEcVAq07x20xvEncxIr21l5I8CrVACY4xI
 64kE6c02F40Ex7xfMcIj6xIIjxv20xvE14v26r1Y6r17McIj6I8E87Iv67AKxVW8Jr0_Cr
 1UMcvjeVCFs4IE7xkEbVWUJVW8JwACjcxG0xvY0x0EwIxGrwCY02Avz4vE14v_GFyl42xK
 82IYc2Ij64vIr41l4I8I3I0E4IkC6x0Yz7v_Jr0_Gr1lx2IqxVAqx4xG67AKxVWUJVWUGw
 C20s026x8GjcxK67AKxVWUGVWUWwC2zVAF1VAY17CE14v26r126r1DMIIYrxkI7VAKI48J
 MIIF0xvE2Ix0cI8IcVAFwI0_Jr0_JF4lIxAIcVC0I7IYx2IY6xkF7I0E14v26r1j6r4UMI
 IF0xvE42xK8VAvwI8IcIk0rVWrZr1j6s0DMIIF0xvEx4A2jsIE14v26r1j6r4UMIIF0xvE
 x4A2jsIEc7CjxVAFwI0_Jr0_GrUvcSsGvfC2KfnxnUUI43ZEXa7IU8ZZ23UUUUU==
X-Originating-IP: [124.16.141.241]
X-CM-SenderInfo: pyxotu46lvutnvoduhdfq/1tbiBgcBA10Te3q+NAAAsG
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
Cc: linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix warnings reported by coccicheck:
./drivers/staging/media/atomisp/pci/runtime/isp_param/src/isp_param.c:159:4-10: WARNING: NULL check before some freeing functions is not needed.

Signed-off-by: Xu Wang <vulab@iscas.ac.cn>
---
 .../media/atomisp/pci/runtime/isp_param/src/isp_param.c        | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/runtime/isp_param/src/isp_param.c b/drivers/staging/media/atomisp/pci/runtime/isp_param/src/isp_param.c
index e861777385a0..823ec54b6281 100644
--- a/drivers/staging/media/atomisp/pci/runtime/isp_param/src/isp_param.c
+++ b/drivers/staging/media/atomisp/pci/runtime/isp_param/src/isp_param.c
@@ -155,8 +155,7 @@ ia_css_isp_param_destroy_isp_parameters(
 
 	for (mem = 0; mem < IA_CSS_NUM_MEMORIES; mem++) {
 		for (pclass = 0; pclass < IA_CSS_NUM_PARAM_CLASSES; pclass++) {
-			if (mem_params->params[pclass][mem].address)
-				kvfree(mem_params->params[pclass][mem].address);
+			kvfree(mem_params->params[pclass][mem].address);
 			if (css_params->params[pclass][mem].address)
 				hmm_free(css_params->params[pclass][mem].address);
 			mem_params->params[pclass][mem].address = NULL;
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
