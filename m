Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CBD368086
	for <lists+driverdev-devel@lfdr.de>; Sun, 14 Jul 2019 19:31:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A1BB4854B4;
	Sun, 14 Jul 2019 17:31:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id G8F21HfatVGB; Sun, 14 Jul 2019 17:31:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3B6D184D11;
	Sun, 14 Jul 2019 17:31:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AB92B1BF20F
 for <devel@linuxdriverproject.org>; Sun, 14 Jul 2019 17:31:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A8A02860D6
 for <devel@linuxdriverproject.org>; Sun, 14 Jul 2019 17:31:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fA4+hHTmqY63 for <devel@linuxdriverproject.org>;
 Sun, 14 Jul 2019 17:31:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 36CBE84BF1
 for <devel@driverdev.osuosl.org>; Sun, 14 Jul 2019 17:31:41 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id l21so6622579pgm.3
 for <devel@driverdev.osuosl.org>; Sun, 14 Jul 2019 10:31:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=XIexvq8195z5zdBnYHep1y5JG5Az7y2M3zNWSTA+XWk=;
 b=nxL3DwpINsiYf4kiJNJi3FOhugldoiw4H3VkM0UQBEUSmx6rZcI5sVgCUooFSq3V3g
 i+eTnT6NjJLb095llK7Z/ygc1nSahLW8TfMEzsjeFD7p+/dgzd867PEmNHhJoL+oQvyu
 PMkhZtwuB7j+y+BlQ1jsZbXVjMP05iIDqTrkgVkNw829hGBO5CmaM2tMRPchVTJ/Y+vf
 1QgS/CaLyPZEG0noM3LjWxvJd/pAXVdJNSnNiq4L7TKpIGOumcCgMF2KIXROKaMfoEvB
 SXSXsaxc9XT0iCr9svWd9frpY1vu/gz90UmvYtFGv2S3A3GPW7hyVzyTIHFPYQLt0gIJ
 WsXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=XIexvq8195z5zdBnYHep1y5JG5Az7y2M3zNWSTA+XWk=;
 b=R6D9cA7jLtIDaF14a4wofGEF0+tnVULvVfyVLjgf3OOvYyaZxYDTKNAZgCoxH6DX3h
 Nl6PZr6hLiTzOBZImuRiYJYWVGBQeltCycS7Ak0ZNGf9yPKkMl2SPqiaLiMJ3tI0EYFF
 etou3V3SuurX05r3meHNmwQev9/+qBvP6COrh6K8FSv7PA35PkjU28ZHxE535zcePTdq
 VcUvzAQcoutDLP42QJioFo0+mFaXGnQrSOHSFC2dTkHb7poNU69fPW1UbybJuvlgZISU
 KVY9ryOel8BqDpEwKnsoDUpmyzjUuz739Q9fSbKj8dXfC4JD3mZ6BEEauXzW77tQEimY
 SQ9w==
X-Gm-Message-State: APjAAAVGxq1aSjs+R2aTUaZh1au1sXJG3A/aBOIuRJpguIoJtY9+Kt9W
 2+QIB7hod8hyUePd5fL/SvP9lYfM
X-Google-Smtp-Source: APXvYqyzQ1nkBbFzEXz3kw3BOEybya2qUoXl08SFqarv5cYTZykIrodPwsj+jIvgm+QBa0VviN5geg==
X-Received: by 2002:a63:2a96:: with SMTP id
 q144mr11036842pgq.116.1563125500785; 
 Sun, 14 Jul 2019 10:31:40 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.86.126])
 by smtp.gmail.com with ESMTPSA id x67sm17593535pfb.21.2019.07.14.10.31.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 14 Jul 2019 10:31:40 -0700 (PDT)
Date: Sun, 14 Jul 2019 23:01:34 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Shobhit Kukreti <shobhitkukreti@gmail.com>,
 Emanuel Bennici <benniciemanuel78@gmail.com>,
 Nishka Dasgupta <nishkadg.linux@gmail.com>,
 Paolo Abeni <pabeni@redhat.com>, Arnd Bergmann <arnd@arndb.de>,
 Madhumitha Prabakaran <madhumithabiw@gmail.com>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 hdegoede@redhat.com, Larry.Finger@lwfinger.net
Subject: [PATCH] staging: rtl8723bs: os_dep: Remove code valid only for 5GHz
Message-ID: <20190714173134.GA7111@hari-Inspiron-1545>
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

As per TODO ,remove code valid only for 5 GHz(channel > 14).

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/os_intfs.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/os_intfs.c b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
index 544e799..18d61e5 100644
--- a/drivers/staging/rtl8723bs/os_dep/os_intfs.c
+++ b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
@@ -239,9 +239,6 @@ static void loadparam(struct adapter *padapter, _nic_hdl pnetdev)
 	registry_par->channel = (u8)rtw_channel;
 	registry_par->wireless_mode = (u8)rtw_wireless_mode;
 
-	if (registry_par->channel > 14)
-		registry_par->channel = 1;
-
 	registry_par->vrtl_carrier_sense = (u8)rtw_vrtl_carrier_sense ;
 	registry_par->vcs_type = (u8)rtw_vcs_type;
 	registry_par->rts_thresh = (u16)rtw_rts_thresh;
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
