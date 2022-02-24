Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 001804C383E
	for <lists+driverdev-devel@lfdr.de>; Thu, 24 Feb 2022 22:55:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 63E7641781;
	Thu, 24 Feb 2022 21:55:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LtUXmQIEDkTH; Thu, 24 Feb 2022 21:55:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1154541728;
	Thu, 24 Feb 2022 21:55:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C90361BF2B8
 for <devel@linuxdriverproject.org>; Thu, 24 Feb 2022 21:55:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C5E7183E74
 for <devel@linuxdriverproject.org>; Thu, 24 Feb 2022 21:55:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5m7OeSrZBAkm for <devel@linuxdriverproject.org>;
 Thu, 24 Feb 2022 21:55:30 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-yb1-xb2d.google.com (mail-yb1-xb2d.google.com
 [IPv6:2607:f8b0:4864:20::b2d])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 51B6283E58
 for <devel@driverdev.osuosl.org>; Thu, 24 Feb 2022 21:55:30 +0000 (UTC)
Received: by mail-yb1-xb2d.google.com with SMTP id u3so2191133ybh.5
 for <devel@driverdev.osuosl.org>; Thu, 24 Feb 2022 13:55:30 -0800 (PST)
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
 b=TUBrPCVGWmCejgJ+V2r1PGLGMk+9Ch1jF9xrqKkGjvusIrxZs0CXt2ym8ghJDfMJXe
 fVHzVEh/VUd9ByBYkS4dTRFC+Lz7CELQBxlQruIlmg4VxNQtxs1nuXlyammkuIGqcmZu
 /rZLtvUuuz3+bAWvG2yPeNP4V7MY6bN+OnCZKnSm3Nm4DZz/dCsvzpMMb9TThHQIe8Gr
 ESbL0kx1w/OIXKMEe1SDXJ4rh89CNCzcq8ytf7MQ0qK7Qr/tNRNbbFL8U2XuRUKafii5
 vOIK1YWfZOdKnVfEt8S5HaLSF2jdnEB5eAbCxPgqXGe8qQjIOsGJxL9dI1BTQRzJLJ5F
 c4tQ==
X-Gm-Message-State: AOAM533M40DqEaMzAJEdDdermew/JAjzU4ObYWOblgMOd5pLw1C5bYmO
 3WdivfhRSq22gEL5LCI9pqJLdG5o/yFC/PQY9yg=
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
