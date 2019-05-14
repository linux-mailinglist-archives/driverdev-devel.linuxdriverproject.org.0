Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DE14A1C5BE
	for <lists+driverdev-devel@lfdr.de>; Tue, 14 May 2019 11:12:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6F90885E9B;
	Tue, 14 May 2019 09:12:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 79K_bqREGAoq; Tue, 14 May 2019 09:12:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2933085E6F;
	Tue, 14 May 2019 09:12:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 522001BF20B
 for <devel@linuxdriverproject.org>; Tue, 14 May 2019 09:12:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4EF3985E6F
 for <devel@linuxdriverproject.org>; Tue, 14 May 2019 09:12:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8jv4S-ihNExN for <devel@linuxdriverproject.org>;
 Tue, 14 May 2019 09:12:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 86B9685DE1
 for <devel@driverdev.osuosl.org>; Tue, 14 May 2019 09:12:38 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id n19so8810213pfa.1
 for <devel@driverdev.osuosl.org>; Tue, 14 May 2019 02:12:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=qcsViiCUX7r9yr4AyE0QAmtvZqr1GMk8H0DtdDRgywA=;
 b=pMvwc69IEX1Y91H8mRcVDhJR54joa60SR4KqvH1WWzBlooGRRQ22jWJtqfWIEr3DFC
 YsnmdbvXNvPueuRI177QtgY688vbpcAW9Law1WguOZu7RbjNuXzi7wmY1PPIlklE/6yY
 d4iVhbk6ljCsYPp8O09kh+qSMTddTARB+5Y5k8Rhfh9IM1C/doaMqxToTeZxwxUk0cRr
 8A7nwJ/AsSAGORi/dGrTqeD0KGyEPdQMunfyX27nBv+rNRHFEoBOg2x04eadpHLqhlis
 iFLU/+aPWizqep48S6oc5EZPvsWMhr8nDly6Jmwkc5IQjbdgx7BM/e/BeV53CSX5UyOL
 YIrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=qcsViiCUX7r9yr4AyE0QAmtvZqr1GMk8H0DtdDRgywA=;
 b=YonLwqK/Uma25TzQm5eYCo4wF0NwB3BXJYfAEeZpVVAiNWFvqaOns/jT6s98MfF61q
 aGNINje3msKJWD0GqjhnZ7LoRXgLaVB/75YTAXiPFrucBMxun+dVEkOkjksTztsKGIep
 cWVsgUQQ8oVBNoL0Bg9czZZNuoyArV5V1cf9ID0kwmBR9WRXkSmxrbD9dGNv5+HeVi7o
 2TXdrK4LG1I5ixLtLY9oIiedHdYgY1QrSBNVUDd/wB9bmS/AgzYI8ksUEQfl24AwiN9P
 PcxgOQrjoSHh703aqFMp/MKRL1sjDHgYA/Bs6sse97fCpOriWLqf/YfkJPIS+r7tHfem
 IF3w==
X-Gm-Message-State: APjAAAVxx75gfysKBbITakZogA5Kic0GDan8ANNDNgSaV4Ef/oGJPMqX
 HP44pEOmRczNV2CsIX2/Avs=
X-Google-Smtp-Source: APXvYqzKrh2j9sJ2HBbHFqNqc0ZcmLoUiUq9ONcvnSrrw+Y0XASo09xC9f8OTLdAAb4yvmlrub04kQ==
X-Received: by 2002:aa7:8296:: with SMTP id s22mr40314675pfm.52.1557825157695; 
 Tue, 14 May 2019 02:12:37 -0700 (PDT)
Received: from arch ([2405:204:7102:1ca6:a53f:1f68:43dd:48ab])
 by smtp.gmail.com with ESMTPSA id u12sm599958pfl.159.2019.05.14.02.12.35
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 14 May 2019 02:12:37 -0700 (PDT)
Date: Tue, 14 May 2019 14:42:31 +0530
From: Puranjay Mohan <puranjay12@gmail.com>
To: greg@kroah.com
Subject: [PATCH V2 1/5] Staging: rtl8192u: ieee80211: Fix coding style warning
Message-ID: <20190514091224.GA786@arch>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Cc: devel@driverdev.osuosl.org, dan.carpenter@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove braces around a single if statement to fix following
checkpatch.pl warning.
WARNING: braces {} are not necessary for single statement blocks

Signed-off-by: Puranjay Mohan <puranjay12@gmail.com>
---

V2 - remove extra blank line before the closing brace.

 drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
index 0e762e559675..1ab10d8919a6 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
@@ -2577,9 +2577,8 @@ static inline void ieee80211_process_probe_response(
 	spin_unlock_irqrestore(&ieee->lock, flags);
 	if (is_beacon(beacon->header.frame_ctl)&&is_same_network(&ieee->current_network, network, ieee)&&\
 		(ieee->state == IEEE80211_LINKED)) {
-		if (ieee->handle_beacon != NULL) {
+		if (ieee->handle_beacon != NULL)
 			ieee->handle_beacon(ieee->dev,beacon,&ieee->current_network);
-		}
 	}
 
 out:
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
