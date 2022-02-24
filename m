Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C28684C3839
	for <lists+driverdev-devel@lfdr.de>; Thu, 24 Feb 2022 22:55:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 49F436120C;
	Thu, 24 Feb 2022 21:55:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RAMBSb4Xh--w; Thu, 24 Feb 2022 21:55:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 05CF360A83;
	Thu, 24 Feb 2022 21:55:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D33D51BF2B8
 for <devel@linuxdriverproject.org>; Thu, 24 Feb 2022 21:55:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CEC7B41781
 for <devel@linuxdriverproject.org>; Thu, 24 Feb 2022 21:55:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id axGLP-XvSm6b for <devel@linuxdriverproject.org>;
 Thu, 24 Feb 2022 21:55:10 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-yb1-xb2a.google.com (mail-yb1-xb2a.google.com
 [IPv6:2607:f8b0:4864:20::b2a])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 44B1D41728
 for <devel@linuxdriverproject.org>; Thu, 24 Feb 2022 21:55:10 +0000 (UTC)
Received: by mail-yb1-xb2a.google.com with SMTP id w63so2163671ybe.10
 for <devel@linuxdriverproject.org>; Thu, 24 Feb 2022 13:55:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=wv9+lUDiUamCN2D56q0OJAqCtadhguvOfwApXNhEE00=;
 b=fQ9VyErpjH1Ru2YRO5JMu4gTnRckhXUKJUhCFk6Y8aG47Hd8PwdJy/oPgKNwgHhoxC
 5AhXHqsdJmhaZrZFPIArIbhFbISZPzBwxwb1ptDg+s5zvawMcO3MHfTJMqsCbaJbXa/A
 qgSWTSLdpw7rDo7AtX8srEaA+iIcbUpvNIBzdwp78WGvgWPqN0zdNGoDIv9iiC+XOXLj
 9Fv374QMhIfiAwtdpHfsRGad6+RVBmTnL1dgAUSOwxFSP5FyPAkr1FdvMfosUEv035TL
 zYTc1pYNbfqUFAzg/PeSPjJPhBznE70PVOIXo8H8p/FpMQ5CFUITWh3JLRhT4e9tSNJA
 HqEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=wv9+lUDiUamCN2D56q0OJAqCtadhguvOfwApXNhEE00=;
 b=B9hIyH5PG3N85ky2/VPG+51iNK8vJCJn2jkBBbN0IWZ8EXhjJI5l3OtXJzE2VrTCcN
 U2fWJ3qBe1X+GVXKz5u802bVyE9rRg7l2Ecy2tCMCd4d4I0PHDrYFHVIO9RkZK8LI4At
 QvPOR2dPoJdkxhk+31d2haKQgtrjhW8P7KOIhJUycxsLUQcWTGI7gWT+i9bn+53w2w+U
 /Zg58RI9xu2aVdHc+t/+wU8huxIuanOG7xEOUswpozpOCtV+ySnKEP/rDtBGgQLncATK
 45eAkvRvA5zkL3g/8U/w1ABVghtabMNX3rxbok15ybBicmZIsJjOgNxEjWpArpaGvGYc
 Xv/w==
X-Gm-Message-State: AOAM532WRX96DzCXVFN6PQLvNxfGMPAQoJ1We3WJV46UQsDdfKJrt5X+
 QHv+fop26K9qmy80DAP1HtmIVa+X0gMKklyngVA=
X-Google-Smtp-Source: ABdhPJxtktc3ImDCly16x55UpqgVlzHSFiUCHPWrCNE5Dze05Wt+ErZZdMR6SLAhyrMw5CKhFSvZJ+xLXI2T8qp5AxU=
X-Received: by 2002:a5b:1cc:0:b0:625:2da3:cb6d with SMTP id
 f12-20020a5b01cc000000b006252da3cb6dmr2880172ybp.296.1645739709046; Thu, 24
 Feb 2022 13:55:09 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:7000:7f45:0:0:0:0 with HTTP; Thu, 24 Feb 2022 13:55:07
 -0800 (PST)
From: MR DAVID MORRIS <mrjohnwegener35@gmail.com>
Date: Thu, 24 Feb 2022 13:55:07 -0800
Message-ID: <CA+Kwxe_LzQeA6t3SzVrqsymGbcsgko+Yqh+6hNoTZHx-xKVDpQ@mail.gmail.com>
Subject: Dear Beneficiary
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
Reply-To: mrdavidmorris1718@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
I am MR DAVID MORRIS, Inspection Unit Manager United Nations,
Inspection Agency in Hartsfield Jackson International Airport Atlanta,
Georgia.During our investigation, I discovered An abandoned shipment through a
Diplomat from United Kingdom which was transferred from JF Kennedy
Airport to our facility here in Atlanta,

The ATM debit card is worth $8million,And I  Ascertain you
that the consignment is in your name,you are advised to provide all
detail for claim.

Sincerely,

MR MORRIS

CONTACT.......... mrdavidmorris1718@gmail.com
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
