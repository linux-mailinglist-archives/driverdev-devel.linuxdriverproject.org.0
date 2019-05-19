Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 130A5227B2
	for <lists+driverdev-devel@lfdr.de>; Sun, 19 May 2019 19:27:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1D1B787592;
	Sun, 19 May 2019 17:27:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KrOl2wxEhJGo; Sun, 19 May 2019 17:27:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3DD7D8753D;
	Sun, 19 May 2019 17:27:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B78841BF338
 for <devel@linuxdriverproject.org>; Sun, 19 May 2019 17:27:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B31F085CE2
 for <devel@linuxdriverproject.org>; Sun, 19 May 2019 17:27:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xJ56IVT3TTSA for <devel@linuxdriverproject.org>;
 Sun, 19 May 2019 17:27:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2A9E7842F6
 for <devel@driverdev.osuosl.org>; Sun, 19 May 2019 17:27:30 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id w22so5621336pgi.6
 for <devel@driverdev.osuosl.org>; Sun, 19 May 2019 10:27:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=u2lVPbWCs/nw7GnzyUIhDMrqS7+oEodUC8PkBDuay7I=;
 b=NRo/fDBPGQhDg7e7L2Cq6GJmTZKWrObVIfHPuz8uDY7bH2HMdU4ac3V54Skt3THW44
 s3Wi/iPla03SRCoQSgwlufGjwYTJ3HuS4OosoGDRU9DHipd0AcgnLsFnxmJEFqnCpr7k
 UCpjDiw3Nv6/j2dHEot66VQdym4BP6+UE80tUuJzaNSktSLcNnBE1ICS9cN2gUUGY9ls
 zFoioWW/V4DNGGqjShx6Xo8cYcl/aecbJjC5XwnSPYg2Rc/IHc9cHN6lZajeF6uCxZkT
 t81iT/AE86e06JJZR+5UFy6fSCUQ3IBrtqClC2Pee8HXuGjWi7Ign89F2G+xa5G3JduY
 yKWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=u2lVPbWCs/nw7GnzyUIhDMrqS7+oEodUC8PkBDuay7I=;
 b=hLiuu84tu+eHVirW5rIJNsPxPMvsS8tYNqWUYRUvDCpGGwLPOh2THddi00b3dFRxTA
 My9BKgS35eqUMTcoH6KPDOMJr+TGrbEtC5iK5sBALgE3AMRZdI8Sz4PQwtQrq+C0vZfa
 6SBAU/SPFM1qZSf2lfj9De9MoHhVz8sDbhYUREQgpH177xU6HSyFLCEDd36s/vgnK5py
 7VgpwqVu7+0e74UWQ3K5c/3nXcAu83qA+e+bl89UNxSSGIHCrH8ugaZKtSK7fq11IX9o
 Cf1LaD+0fah9J+QGilSFQ3WGSArVUETZwZ1zQ9D3Ab/16+k0Oei8ZIapBz7lGFb4sw98
 /Raw==
X-Gm-Message-State: APjAAAWoo49nWhp/Jg2ehdHoxGYnhl49rsF5t8JtoU1vIioCPfPqNIZ+
 o9GKPqgNdzRV0vuV4dSCsjw=
X-Google-Smtp-Source: APXvYqy95PTGfppcoksREPaceYCdDH/7TXPCeJ3K9hlWWD5C+YgPSFmlUTIpVtSRCKW5b51Rx2oS9A==
X-Received: by 2002:a63:2260:: with SMTP id t32mr32743695pgm.222.1558286849851; 
 Sun, 19 May 2019 10:27:29 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.92.73])
 by smtp.gmail.com with ESMTPSA id o20sm18727736pgj.70.2019.05.19.10.27.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 19 May 2019 10:27:29 -0700 (PDT)
Date: Sun, 19 May 2019 22:57:24 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [Patch v2] staging: rtl8723bs: hal: odm_HWConfig: odm_HWConfig:
 Unneeded variable: "result". Return "HAL_STATUS_SUCCESS"
Message-ID: <20190519172723.GA9329@hari-Inspiron-1545>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch fixes below warnings reported by coccicheck

drivers/staging/rtl8723bs/hal/odm_HWConfig.c:501:4-10: Unneeded
variable: "result". Return "HAL_STATUS_SUCCESS" on line 526

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
-----
Changes in v2:
  - fixed typo in commit message
---

---
 drivers/staging/rtl8723bs/hal/odm_HWConfig.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/odm_HWConfig.c b/drivers/staging/rtl8723bs/hal/odm_HWConfig.c
index d802a1f..4711c65 100644
--- a/drivers/staging/rtl8723bs/hal/odm_HWConfig.c
+++ b/drivers/staging/rtl8723bs/hal/odm_HWConfig.c
@@ -498,8 +498,6 @@ HAL_STATUS ODM_ConfigBBWithHeaderFile(
 
 HAL_STATUS ODM_ConfigMACWithHeaderFile(PDM_ODM_T pDM_Odm)
 {
-	u8 result = HAL_STATUS_SUCCESS;
-
 	ODM_RT_TRACE(
 		pDM_Odm,
 		ODM_COMP_INIT,
@@ -523,5 +521,5 @@ HAL_STATUS ODM_ConfigMACWithHeaderFile(PDM_ODM_T pDM_Odm)
 
 	READ_AND_CONFIG(8723B, _MAC_REG);
 
-	return result;
+	return HAL_STATUS_SUCCESS;
 }
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
