Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3525B428B4B
	for <lists+driverdev-devel@lfdr.de>; Mon, 11 Oct 2021 12:54:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 89AE24043D;
	Mon, 11 Oct 2021 10:54:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E9VKX8IihZrK; Mon, 11 Oct 2021 10:54:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id EE6AF40392;
	Mon, 11 Oct 2021 10:54:54 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 98CBD1BF983
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 11 Oct 2021 10:54:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 87C3460843
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 11 Oct 2021 10:54:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kDvnU4CuHCHX
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 11 Oct 2021 10:54:35 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com
 [IPv6:2a00:1450:4864:20::441])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DA400600CD
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 11 Oct 2021 10:54:34 +0000 (UTC)
Received: by mail-wr1-x441.google.com with SMTP id m22so54937383wrb.0
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 11 Oct 2021 03:54:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=DOxN63QWnl4dBNWQl+LufsBrewR+8VuPJnGph7ijSeE=;
 b=mPBTlEH4XOAotl3XKjZztbCo2mz/CFdWls9el9phiwEX4XSwkpUYpQ0XSsphKSdXcp
 n5dhEt4HS16CEiCj1/Shpp/OJ1qGjfd11WJquvbjXC3thYCacbKE/aSxsGO+du47s1wm
 PlmiJ30MvOg3RY/UMCacB9AQORZPA9YRA7MkHc0CLvuAnkp4/f0rq408Kh0gBQb6PeT6
 zPEl73iwbbL7QRIxmwjycldlIv/w/ZRMSP5p3vkJOTRo2KtiggnSGPDRfdb+dR2nkjsy
 M1ttdpfKZr4Yq+aMWJ0EUyhMT6b/vmaVqJH8jDZp1fIHli4WQkyMPdszMiiFZa/Ey/8K
 WzuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=DOxN63QWnl4dBNWQl+LufsBrewR+8VuPJnGph7ijSeE=;
 b=7YSglDYtY7xiAQyQYU4qfQgqbSbMIgO2ZAp7iMGpJ95QXXfGckiPCcMFkWYZ5hd45z
 6rWHOd6jaz9VUTa5u7Qq35MxFGzFtdx/xVPVXG33aFtQUd5nrbEnAZ7znZveChd1fDrG
 4IMQUUe47jktjQiH1H1zC5acQHtNBug8ADrE0OIoKulb4+SRmhwC44wDP7aJW3vbR90J
 tDol175TeBl8qR73Ewy15S57bkjMqPlRmz2ZfzH9UHHDMHcNTn/bHQCi5I4NBUN+EMDF
 5XgKalZoIcpIoZKfkR5JAWkDjwGabeCMQYXHNHgg5MacivVrfUw4czAxWdYK/tTULjgh
 ScRg==
X-Gm-Message-State: AOAM531SEl5hrUOyfvbcteDiZCnX1pMHVmEXMGAAyp4/eqXFQNdo5MPU
 +vUDdGq04hhE7ptEv0VOEegFGLAnQyBFV5T/8Tw=
X-Google-Smtp-Source: ABdhPJwQyKx1JKOHTE7GA2Wgh2tYBpzZCA0QqG2BLDw3zFK0u3laNipFc3h35LGyavrl/0AVOpF8QghoXy7VzSHPXgg=
X-Received: by 2002:adf:a550:: with SMTP id j16mr24223038wrb.180.1633949672934; 
 Mon, 11 Oct 2021 03:54:32 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:adf:dd8c:0:0:0:0:0 with HTTP; Mon, 11 Oct 2021 03:54:32
 -0700 (PDT)
From: "Cr.David Ramcharan" <convy0101@gmail.com>
Date: Mon, 11 Oct 2021 03:54:32 -0700
Message-ID: <CADDRs97nj=DseBLP-Xy8fKwkd_ujppeNfpV6+iCktc73UNTNFg@mail.gmail.com>
Subject: Thank You
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
Reply-To: ramcharan9910@outlook.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Please I am writing to notify you again on my intention to list your
name as a beneficiary to the total sum of GBP6.350 million (Six
million, Three hundred and fifty thousand British Pounds Sterlings) in
the intent of the deceased (name now withheld since this is my second
letter to you).

I contacted you because you bear the surname identity and therefore
can present you as the beneficiary to inherit the account proceeds of
the deceased since there is no written "WILL" or trace to the deceased
family relatives. My aim is to present you to my Bank Authorities as
the Next of Kin to our deceased client. I will guide you all through
the Claim procedure by providing all relevant Information and guiding
you in your decisions and response to the Bank Management. All the
papers will be processed after your acceptance.

In your acceptance of this deal, I request that you kindly forward to
me your letter of acceptance; your current telephone and fax numbers
,age, occupational status and a forwarding address to enable me submit
to the Bank Management the details as the Next of Kin to their
deceased customer. Reply strictly through: ramcharancrdavid@gmail.com

Yours faithfully,
Cr.David Ramcharan
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
