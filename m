Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 60ACE193DE2
	for <lists+driverdev-devel@lfdr.de>; Thu, 26 Mar 2020 12:32:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 78B6988656;
	Thu, 26 Mar 2020 11:32:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FJ3xHX0N4PUo; Thu, 26 Mar 2020 11:32:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7F85088635;
	Thu, 26 Mar 2020 11:32:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 940571BF4D8
 for <devel@linuxdriverproject.org>; Thu, 26 Mar 2020 11:32:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8943526045
 for <devel@linuxdriverproject.org>; Thu, 26 Mar 2020 11:32:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g7TsWQAb2okT for <devel@linuxdriverproject.org>;
 Thu, 26 Mar 2020 11:32:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f67.google.com (mail-pj1-f67.google.com
 [209.85.216.67])
 by silver.osuosl.org (Postfix) with ESMTPS id 803AA25EA9
 for <devel@driverdev.osuosl.org>; Thu, 26 Mar 2020 11:32:33 +0000 (UTC)
Received: by mail-pj1-f67.google.com with SMTP id np9so2314395pjb.4
 for <devel@driverdev.osuosl.org>; Thu, 26 Mar 2020 04:32:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=PHcs4GB3AoNw6GTKIzaWPrLDhOAMwn19frkFdnLFbkE=;
 b=Gf5zVKKMsc5hD/OTXIgHwmE5TJY0TNUX98X4+6mpDQZE6rshNeMhbuw6VuBz8ZNASR
 I39FDvDX0PTynGwTyTcSueFrz/QCyEuO94YnZM6hxweS+ja6YkhQJBclQwIK5NT4pJBE
 +yxLkSFvcOOHzNlxBRNAklgD19kU/P+tmi0MqT4MwyXPIE4rGYFJ9vEuME2n0R89hehD
 HvjpctL/lhDMSZMLRsic6KC/I3o07MSyYhj87G4HT3mthePcCNG27N8wrlT2Tg4OAcyZ
 iJW+fddEDO+Y30KB1yYeyaTvmJ+pt5a0QCgNqlB7zpUzLPcYj5euu0YfSJOl3FYHuhcx
 +nUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=PHcs4GB3AoNw6GTKIzaWPrLDhOAMwn19frkFdnLFbkE=;
 b=Myj1tqp6+VDHnUN17NoKO43OBAuuee/IDVPP5lYddcA5HWI+GrtHE47qLgQPKOUGFv
 FOtd8wHTjYVdFwdwcta5T5RL1FZ+G8FTrC4fUXxGxdhIMLPBad0go290gNsm3DnImsoC
 Q0ueyvE5yJ8Aatg116SeU7u5W0j4nA6QEpUa76RM34vxr+54wV1S3Jyx04QBDW86wN2U
 JzHnczDZNuxwbYPqFZd1dwPYpbcXB2aX9y0xgUTGz6Ynb7uewukDL2jTqGx7msvPrPh0
 rvjUA+OSshflV8SeyuLaGSxIcRvh0x0z2dTvI/4XJvXirwB60OtJF7o+34f0St40xZoZ
 Mt+Q==
X-Gm-Message-State: ANhLgQ1o9K0rytkf/YBmkMxKmbaPMxz55fIVNp3vxy96UvbKiBiSvr24
 MQlv0za/c3ejHt888Ucpu32PcW1EBwk=
X-Google-Smtp-Source: ADFU+vvXKyDWYHQQuH3sh15+gZxkW32AeuMz6G3NYnqD0Qc9tENjpefUBcb2K5tOWHPzXyTqGyulBg==
X-Received: by 2002:a17:90a:5d0a:: with SMTP id
 s10mr2650362pji.166.1585222352911; 
 Thu, 26 Mar 2020 04:32:32 -0700 (PDT)
Received: from simran-Inspiron-5558 ([2405:205:1208:56c8:8124:5e4b:ea06:7595])
 by smtp.gmail.com with ESMTPSA id
 132sm1479454pfc.183.2020.03.26.04.32.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Mar 2020 04:32:32 -0700 (PDT)
Date: Thu, 26 Mar 2020 17:02:10 +0530
From: Simran Singhal <singhalsimran0@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH] staging: rtl8723bs: hal: Remove unnecessary cast on void
 pointer
Message-ID: <20200326113210.GA29951@simran-Inspiron-5558>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
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

Assignment to a typed pointer is sufficient in C.
No cast is needed.

The following Coccinelle script was used to detect this:
@r@
expression x;
void* e;
type T;
identifier f;
@@
(
  *((T *)e)
|
  ((T *)x)[...]
|
  ((T*)x)->f
|

- (T*)
  e
)

Signed-off-by: Simran Singhal <singhalsimran0@gmail.com>
---
 drivers/staging/rtl8723bs/hal/odm_CfoTracking.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/hal/odm_CfoTracking.c b/drivers/staging/rtl8723bs/hal/odm_CfoTracking.c
index 34d83b238265..3ea1972545e5 100644
--- a/drivers/staging/rtl8723bs/hal/odm_CfoTracking.c
+++ b/drivers/staging/rtl8723bs/hal/odm_CfoTracking.c
@@ -298,7 +298,7 @@ void ODM_CfoTracking(void *pDM_VOID)
 void ODM_ParsingCFO(void *pDM_VOID, void *pPktinfo_VOID, s8 *pcfotail)
 {
 	PDM_ODM_T pDM_Odm = (PDM_ODM_T)pDM_VOID;
-	struct odm_packet_info *pPktinfo = (struct odm_packet_info *)pPktinfo_VOID;
+	struct odm_packet_info *pPktinfo = pPktinfo_VOID;
 	PCFO_TRACKING pCfoTrack = &pDM_Odm->DM_CfoTrack;
 	u8 i;
 
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
