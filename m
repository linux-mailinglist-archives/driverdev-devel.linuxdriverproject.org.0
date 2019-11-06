Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1208BF165A
	for <lists+driverdev-devel@lfdr.de>; Wed,  6 Nov 2019 13:54:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 862E122836;
	Wed,  6 Nov 2019 12:54:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4CdniAxpqsul; Wed,  6 Nov 2019 12:54:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6D948227EC;
	Wed,  6 Nov 2019 12:54:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 322B81BF322
 for <devel@linuxdriverproject.org>; Wed,  6 Nov 2019 12:54:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2B1498A00F
 for <devel@linuxdriverproject.org>; Wed,  6 Nov 2019 12:54:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HGcfwBDxGbgj for <devel@linuxdriverproject.org>;
 Wed,  6 Nov 2019 12:54:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f66.google.com (mail-ed1-f66.google.com
 [209.85.208.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 762CE89CE6
 for <devel@linuxdriverproject.org>; Wed,  6 Nov 2019 12:54:19 +0000 (UTC)
Received: by mail-ed1-f66.google.com with SMTP id b72so19270895edf.1
 for <devel@linuxdriverproject.org>; Wed, 06 Nov 2019 04:54:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=97PLcugS6GZdabx19meRQ8j3vi9YDSDqg5Z1P+ZaiEs=;
 b=uMhKCKBgv+8LkpbBunIfju8stwXgVzrsYTCzsImbyV22RqIzVypmejaBJ/h63pnyGq
 rpTHRp6xvcW/9CvmyTigt4Ak8GbqZcKGnAVo75iVidiFguInjb7rDEO5OaZC16dXPnPj
 57xXj6pttWyHotvcaflKupzLa9fISLRvklF31f7ZW+25MM8bcZuzE2tWNQ3wk2Q8mCya
 zjRNIx5dIk/UXcTdZ51C0E2Np0DjnxcO+C4RLDzKvH9+8N0h7YbwZFJ62VYft6+hsWHl
 dnALmWOIEMWgS2bC7JCFBuAOANzxpcTAQVhOc3MxJA3RmaRMq6d6XWBXDh28pzmS7/4q
 Yf+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=97PLcugS6GZdabx19meRQ8j3vi9YDSDqg5Z1P+ZaiEs=;
 b=UkyKt+LsRMUC1QWA9yhCEYIEgspFCFCVQZ4P4V3SNN99skCXLDvtQszPemY5S+Rh3N
 42qCgLf3dxy/mdvdE1D9KXf4C2b3svqObEyWLUSE3XZ00Wv/Hcdd9PjBb3dgNJrq9W7+
 IWA2LlolJW/G6fZhSSPOdEyKkhOewQsmuaXmh30FiHTTQ+d7kN9hqv/QgTNHLxZc7cxh
 XNV+lSMR1cFCPubetLn/PtLPMzp0FMd6WhUE3UAEyIxw7nwhmLeNOfQXH9f4xC9AUUpm
 M2C2phEJ1FvDidGoPyIVdybComFMlZbGlc6PyeEqKenPJQSVN2FDZneH/8qsJyIOZTvt
 C6Jg==
X-Gm-Message-State: APjAAAWbsIyl1FE0m/715Qe4b55vifalUFMRaI9zx1+b6Ap06hjJFARF
 v7/GPwJSnpRedhvO7WXuqltjcUT1rOYrQ4jJvVM=
X-Google-Smtp-Source: APXvYqwHlBiVwvlqX0Xk2HGW/4sygGw1Uj88nn9wy9qAd+5Xp+e3KOqSaM4EJVfZgLT6UCJUJQrU+OUq2xhi1RF2oTM=
X-Received: by 2002:a17:906:22c9:: with SMTP id
 q9mr9502528eja.198.1573044857735; 
 Wed, 06 Nov 2019 04:54:17 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a50:f18e:0:0:0:0:0 with HTTP;
 Wed, 6 Nov 2019 04:54:17 -0800 (PST)
From: Barr Paul Brown <lloydsim03@gmail.com>
Date: Wed, 6 Nov 2019 13:54:17 +0100
Message-ID: <CANaXSY3ZpqkDEy=u66Sj0Knq5Vn67yw5v0mdXdd7g-QC6W+gtQ@mail.gmail.com>
Subject: RE: FINAL NOTICE
To: undisclosed-recipients:;
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
Reply-To: barpaul.brown@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Attn Beneficiary,

                            LETTER OF INFORMATION

Did you authorize Mr Walsh who presented document of claim purported
to have been signed by you for the release of your part-payment Ready
for shipment to your home ????

He is Claiming the fund while the Beneficiary Still Valid in your Name.
If this Authorization was not made by you, kindly get back to us within
48hrs and reconfirm the below info, As your funds have arrived States now.

(1)Your Full Name=============
(2)Mobile Phone Number======
(3)Current Home Address========
(4)Fax Number================
(5)Country====================
(6)City======================
(7)Age/Occupation ==============

Contact Dr Roland the shipping agent on his number (978)5400089 email
royalhorseshipping@outlook.com for instructions and delivery of your box
before he leaves States for Australia.

NOTE:
====
On Know account should you tell the Agent that your box contains funds
because I have already told him that it contains family belongings.


Yours faithfully,
Barr P.Brown
London UK
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
