Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 29F4C19D9E7
	for <lists+driverdev-devel@lfdr.de>; Fri,  3 Apr 2020 17:16:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7969A870EF;
	Fri,  3 Apr 2020 15:16:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fWFaL2lta0Ha; Fri,  3 Apr 2020 15:16:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1870C870BD;
	Fri,  3 Apr 2020 15:16:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AD0E61BF281
 for <devel@linuxdriverproject.org>; Fri,  3 Apr 2020 15:16:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A809786631
 for <devel@linuxdriverproject.org>; Fri,  3 Apr 2020 15:16:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NBNzfbyvjoDI for <devel@linuxdriverproject.org>;
 Fri,  3 Apr 2020 15:16:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
 [209.85.221.44])
 by hemlock.osuosl.org (Postfix) with ESMTPS id BA767865EE
 for <devel@driverdev.osuosl.org>; Fri,  3 Apr 2020 15:16:45 +0000 (UTC)
Received: by mail-wr1-f44.google.com with SMTP id m17so8923715wrw.11
 for <devel@driverdev.osuosl.org>; Fri, 03 Apr 2020 08:16:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references:reply-to;
 bh=sDns12DzSDhUNYedjPxBYIUZam64/1xEznokxCLCf+Q=;
 b=YofFscYQio5kwSAXkJF7c+XpMz7sW88r66I0+xtbOFS+UarwpFyCmQvicCpCTH2qz5
 KprYCzUF5nYFlg8gjlQlzTYthATqMsgiYbOI9ADvPvyY2sxwstIR4WgCMm5qU9WZiLHT
 CLYPyCeWvH9XKo0gtaif4x6hBj13ciPJ7so9PJfwwiaIna4M0MoUldyWtJxh9Q7BLWZf
 6N9ZbxwSZxGV1vM1mO7dAPXgZapJ/rBAOnaGCvbLyvjBIPWMJya6Hdts/JDxPQOqCSoH
 +2abtlT4yAETrR0eEVNPoG/jxz3Ivm4IAgw1zFYUrl0Qup186GlwkCMP7TNarm3C3brl
 w9OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:reply-to;
 bh=sDns12DzSDhUNYedjPxBYIUZam64/1xEznokxCLCf+Q=;
 b=ItE5ap3yZFfyKeYOkheKCoHhi8nJerL7k3I+/Vn511mhSoJHMtg5nIuhL/5QGqVpX8
 CxcaLD9YTmrDtJioooRVCi0ePtI+cb1qh1PlZ/AlfSIdtX8bJR/VVFbweayDZTcYxVn6
 Wf6uBbnByem7rWU3pG9is7y/Ol/7LWtoLIMXOyldfPttovPk46rL8+Q95BIv3FZ79Ibc
 M7y5VLB6KL/tk9sEIZctZpbuXQxfBGT2LZeVLHkZ1G3+iQcuOKk1MOLoGCmb52rXgpR1
 P4jlnffnRC9D6R0vDkBKGW0dBhTh+atxTbSbp6RJRzhNhH+QK8HGqgalD2Swb1T3tjAo
 LNYQ==
X-Gm-Message-State: AGi0PuZxAx+a9fyrNQf+ehKqUnIbJl32quv0yfryO6BN3gCivIDUeBVe
 1bWQXywFL/EZzlPkvkXAp+w=
X-Google-Smtp-Source: APiQypJBr+AyxinqtyXXhx8klmplT8kMqrWyTUGOVwuiOghYJILPNgHd2pSk41zTtzpLAqHygdvANg==
X-Received: by 2002:adf:e288:: with SMTP id v8mr7977522wri.141.1585927004036; 
 Fri, 03 Apr 2020 08:16:44 -0700 (PDT)
Received: from ENIAC10 (a79-168-108-217.cpe.netcabo.pt. [79.168.108.217])
 by smtp.gmail.com with ESMTPSA id y1sm4568244wmd.14.2020.04.03.08.16.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Apr 2020 08:16:43 -0700 (PDT)
Received: from ENIAC10 (localhost [127.0.0.1])
 by ENIAC10 (8.15.2/8.15.2/Debian-10) with ESMTP id 033FGgBd020805;
 Fri, 3 Apr 2020 16:16:42 +0100
Received: (from lpnm@localhost)
 by ENIAC10 (8.15.2/8.15.2/Submit) id 033FGfmo020798;
 Fri, 3 Apr 2020 16:16:41 +0100
From: Luis Mendes <luis.p.mendes@gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: [PATCH 01/01] staging: gasket: Fix incongruency in handling of sysfs
 entries creation
Date: Fri,  3 Apr 2020 16:15:34 +0100
Message-Id: <20200403151534.20753-1-luis.p.mendes@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200403090655.GB2001@kadam>
References: <20200403090655.GB2001@kadam>
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
Reply-To: luis.p.mendes@gmail.com
Cc: devel@driverdev.osuosl.org, Luis Mendes <luis.p.mendes@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Wentao Cai <etsai042@gmail.com>, Rob Springer <rspringer@google.com>,
 Todd Poynor <toddpoynor@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix incongruency in handling of sysfs entries creation.
This issue could cause invalid memory accesses, by not properly
detecting the end of the sysfs attributes array. 

Fixes: 84c45d5f3bf1 ("staging: gasket: Replace macro __ATTR with __ATTR_NULL")

Signed-off-by: Luis Mendes <luis.p.mendes@gmail.com>
---

 gasket_sysfs.c |    3 +--
 gasket_sysfs.h |    4 ----
 2 files changed, 1 insertion(+), 6 deletions(-)

diff -uprN -X linux-5.6-rc7-vanilla/Documentation/dontdiff linux-5.6-rc7-vanilla/drivers/staging/gasket/gasket_sysfs.c linux-5.6-rc7/drivers/staging/gasket/gasket_sysfs.c
--- linux-5.6-rc7-vanilla/drivers/staging/gasket/gasket_sysfs.c	2020-03-23 01:31:56.000000000 +0000
+++ linux-5.6-rc7/drivers/staging/gasket/gasket_sysfs.c	2020-03-29 18:52:39.399925886 +0100
@@ -228,8 +228,7 @@ int gasket_sysfs_create_entries(struct d
 	}
 
 	mutex_lock(&mapping->mutex);
-	for (i = 0; strcmp(attrs[i].attr.attr.name, GASKET_ARRAY_END_MARKER);
-		i++) {
+	for (i = 0; attrs[i].attr.attr.name != NULL; i++) {
 		if (mapping->attribute_count == GASKET_SYSFS_MAX_NODES) {
 			dev_err(device,
 				"Maximum number of sysfs nodes reached for device\n");
diff -uprN -X linux-5.6-rc7-vanilla/Documentation/dontdiff linux-5.6-rc7-vanilla/drivers/staging/gasket/gasket_sysfs.h linux-5.6-rc7/drivers/staging/gasket/gasket_sysfs.h
--- linux-5.6-rc7-vanilla/drivers/staging/gasket/gasket_sysfs.h	2020-03-23 01:31:56.000000000 +0000
+++ linux-5.6-rc7/drivers/staging/gasket/gasket_sysfs.h	2020-03-29 18:52:56.487839090 +0100
@@ -30,10 +30,6 @@
  */
 #define GASKET_SYSFS_MAX_NODES 196
 
-/* End markers for sysfs struct arrays. */
-#define GASKET_ARRAY_END_TOKEN GASKET_RESERVED_ARRAY_END
-#define GASKET_ARRAY_END_MARKER __stringify(GASKET_ARRAY_END_TOKEN)
-
 /*
  * Terminator struct for a gasket_sysfs_attr array. Must be at the end of
  * all gasket_sysfs_attribute arrays.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
