Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9991662118C
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Nov 2022 13:55:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C389E414E5;
	Tue,  8 Nov 2022 12:55:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C389E414E5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tgAD_AV3pGJd; Tue,  8 Nov 2022 12:55:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5DE5C40977;
	Tue,  8 Nov 2022 12:55:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5DE5C40977
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 44A151BF280
 for <devel@linuxdriverproject.org>; Tue,  8 Nov 2022 12:55:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 20138401A0
 for <devel@linuxdriverproject.org>; Tue,  8 Nov 2022 12:55:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 20138401A0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HtgP1SsrxQH2 for <devel@linuxdriverproject.org>;
 Tue,  8 Nov 2022 12:55:41 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 955DC40496
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com
 [IPv6:2607:f8b0:4864:20::62a])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 955DC40496
 for <devel@linuxdriverproject.org>; Tue,  8 Nov 2022 12:55:41 +0000 (UTC)
Received: by mail-pl1-x62a.google.com with SMTP id p21so14096804plr.7
 for <devel@linuxdriverproject.org>; Tue, 08 Nov 2022 04:55:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=SzBlYeGeT15Xra75w9IZDBjQ7Da3XKSmRdlnDJDYrko=;
 b=ErWoPxGynDFe2wMDem7HtRSpQZ4fZCq6M5SSLWLbWfW0miTjnLtQQcOdHWP8waUY/3
 /g8u/k2yNwfLKmwjSJeDPl0aidL7aEpQ84dsIJ71ac1Q1x5+sQ87w969FVmIrcCnuPzi
 u5Yb9VdEPbfgw0NlAflnDXSNwUBg36kf1xVceBeeRfymdd6H1K2LyWSr00tBkqRXiU8D
 vOcrmpJmj0dfyLtFpn/FHoXN6SVzl5F2s8prOB0AqoIcdRcb6IGbpyp8WMPNCc/P2jkn
 mX2Esl5JlY/Mn0qg9SOEdxqMzfCY0OPB6dMty7996ekmmFp0QfCZr38hTwJYCLrGxwyM
 xQww==
X-Gm-Message-State: ACrzQf155/4zloWQFRqMScnFQ5sCVC4ah8wq0zU+lfpNLjTyvXemFJ+l
 KZnY9cG/SXnTg7Q8Fk4QS4mjtxOrAGkuiEwkxf4=
X-Google-Smtp-Source: AMsMyM47LS1qPZzLkwuenKG9e8EkqVAx0b1o0h2FMTeFjb4uVbum8HuMg+fTLdolpE8VrYkkaCtOGqUAWl4+Li1UXi0=
X-Received: by 2002:a17:903:124c:b0:179:da2f:2463 with SMTP id
 u12-20020a170903124c00b00179da2f2463mr55014644plh.128.1667912140584; Tue, 08
 Nov 2022 04:55:40 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6a11:c394:b0:352:4c7b:293f with HTTP; Tue, 8 Nov 2022
 04:55:39 -0800 (PST)
From: "Mr.Abraham" <petersina60@gmail.com>
Date: Tue, 8 Nov 2022 12:55:39 +0000
Message-ID: <CAAxicr_Ht+E1c1=DdHJU221hdcfi0CkGrtNrQpRt0EnGUPsFUA@mail.gmail.com>
Subject: Greeting
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
 :subject:date:message-id:reply-to;
 bh=SzBlYeGeT15Xra75w9IZDBjQ7Da3XKSmRdlnDJDYrko=;
 b=Xu3q1wpAFZi5siecx8YJYeMVEiNO3QQV0TxZRQ+DJyt3xesiqjEQF0Rm7HTl3nwOFx
 axFRcyI6i7i6G4/pP2PvVEqbCOsB5kO0Bz5I7GGRrQ5Gw4A4Y5+pCeaCclAgMJGi5sLD
 EqDwDVpkgunNcDGahlfRBuw9Y/t4QzNoq+MJQosb/zVUJD7djXxdETeMvdiX+3iENykj
 /L2SxI+qBvUTceQFCbCgAE/U6X7DwfDOgC1n6cPEToepiM9X2r1bEe3nVe4yS9labuc0
 vSFhNVcwJs6y2ZBANwx+PchOUfyI1hgi5b0wl44pDO48PKbbUM63TL33jEl8pD0dx9Cw
 DrjA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=Xu3q1wpA
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
Reply-To: mr.abraham022@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

My Greeting, Did you receive the letter i sent to you. Please answer me.
Regard, Mr.Abraham
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
