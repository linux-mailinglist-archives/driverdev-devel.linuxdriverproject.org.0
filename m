Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D3D9B4C383F
	for <lists+driverdev-devel@lfdr.de>; Thu, 24 Feb 2022 22:55:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8BB5A60A9D;
	Thu, 24 Feb 2022 21:55:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Vog6a2Bad68z; Thu, 24 Feb 2022 21:55:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4C91960A83;
	Thu, 24 Feb 2022 21:55:35 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0F9CE1BF2B8
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 24 Feb 2022 21:55:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0C77D60B28
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 24 Feb 2022 21:55:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Oi8L0ltghJ_4
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 24 Feb 2022 21:55:30 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-yb1-xb32.google.com (mail-yb1-xb32.google.com
 [IPv6:2607:f8b0:4864:20::b32])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 872A760A83
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 24 Feb 2022 21:55:30 +0000 (UTC)
Received: by mail-yb1-xb32.google.com with SMTP id e140so2170883ybh.9
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 24 Feb 2022 13:55:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=wv9+lUDiUamCN2D56q0OJAqCtadhguvOfwApXNhEE00=;
 b=qHb9ogIGRGhM8PDCx7MSe5DDQ1M4AC5wnl4H4Sx476EwrFy/qai4HLSrcHXmVP7Zyl
 gRNci1/EwFr5Ps4lWfzCDb+vbFTRckk7AgVofBUlGhy+q0x6dsiw6oxsSRbzWFDteHZM
 6yMykf83pEwSpk8MGas7chZRRTAeBZKc+tCgJ2h3unb8WES0/H39nFWR/59a2NjSDKlp
 +vSpSLBApwfh6AT1z1wyC/8XH4yUEulP0quGqAy0RqzjfPy0QUS+e6iouvlyBuee/v7t
 ZqVcPTIyRK1DqoLN6iNdW/f4pIWhFy5ur04PvfNKdAKEWumqqoqAV7AwGJRJGM/0gBNl
 1YKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=wv9+lUDiUamCN2D56q0OJAqCtadhguvOfwApXNhEE00=;
 b=4SBvt88e8HdYVFTWn+86P/j1cPqj/qXbeFSlDWoqfvB1qWFlHYo0S/dMj3Mfo93FK1
 KDsMb1JbRII4zernC4XweQHh4IYYWIq3qrB813QV7fX5Z4xWhUsy634DSUvunmAWq8uV
 +iBUsv4n3Ed8U9d9zaIXuhkMKVthQo+kYJrB3MrOxL+jRYpNqFUije2Hp1S33hgDvMgm
 VnZpxY4/BnqTgp54ORgZbiJ8G74+We6cH7uEMC1qhzsTsAAA2P3S0eAnP+f1ZGj8pd6y
 oJBTKxa76kfbVCkNR1Sp461WU6RM9uQXtEU8kMWooEQlxYwsdF6+gij3tTdXfL40KGfu
 1Qig==
X-Gm-Message-State: AOAM530+AL9d/HrP2SEJX8qYJ/rtNTPepJXO2QwnyqkmVrfK5ZriKFQH
 QQ0EE8FM3WdHrLH5fh3hoi+CFCTpC2j/fZs6wH8=
X-Google-Smtp-Source: ABdhPJx3tq1ChxXfIgZFH2u8izXWKM5+o6VHPe3N1eQnCpx5Tl1fH0CvuNWQDHc5ecGAvCUexkoGRoDVJH3c9KmG8OI=
X-Received: by 2002:a05:6902:726:b0:619:5610:89ad with SMTP id
 l6-20020a056902072600b00619561089admr3206037ybt.240.1645739729186; Thu, 24
 Feb 2022 13:55:29 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:7108:7616:0:0:0:0 with HTTP; Thu, 24 Feb 2022 13:55:28
 -0800 (PST)
From: MR DAVID MORRIS <mrjohnwegener35@gmail.com>
Date: Thu, 24 Feb 2022 13:55:28 -0800
Message-ID: <CA+Kwxe-hf3_DYJvv+5N9=LG23tq8+KXXGPikXaD5pSekNRiJSg@mail.gmail.com>
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
