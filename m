Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 159C741EB80
	for <lists+driverdev-devel@lfdr.de>; Fri,  1 Oct 2021 13:12:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E25A840445;
	Fri,  1 Oct 2021 11:12:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WZaMBkCC5JIm; Fri,  1 Oct 2021 11:12:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D0B434040B;
	Fri,  1 Oct 2021 11:12:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CAD771BF5A7
 for <devel@linuxdriverproject.org>; Fri,  1 Oct 2021 11:12:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B9D0C40565
 for <devel@linuxdriverproject.org>; Fri,  1 Oct 2021 11:12:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CuuIxy86bokM for <devel@linuxdriverproject.org>;
 Fri,  1 Oct 2021 11:12:38 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-yb1-xb30.google.com (mail-yb1-xb30.google.com
 [IPv6:2607:f8b0:4864:20::b30])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3E02F40520
 for <devel@linuxdriverproject.org>; Fri,  1 Oct 2021 11:12:38 +0000 (UTC)
Received: by mail-yb1-xb30.google.com with SMTP id s4so3289791ybs.8
 for <devel@linuxdriverproject.org>; Fri, 01 Oct 2021 04:12:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=cwYHKV4Nv1uy1+o5jfqgAAWN5reft6xsYAW/4An/l0c=;
 b=FLV56WTo21D5QpT2IfiFcgfqQ7xkAa2e1tXC5YItfNtWPDF4Gf0iWDK4AhVSLk4xy0
 SA3kAcOAPDFwlP+U34Bc8dfMod5gqM5oo6tqkdm0qZCgOVF6MYSavSY9z/oVjkdesltE
 1YqTrJ0H86yLJ8qtHWZNIErby2jlCYS1p1Tdz4J/inmaab2D7LFwDuf4NIZJpF6XEMmq
 3I6YLY0Om6bIchUJyrGyJk70Zuu83luAg7Z12N/rwt14WTQV0536loXTMuRgVv0hn30A
 O7QKaNHu86Naaj36IM5d8Dunyg1dBAFgmgp+HZ0gqzDyq+OSURsLwoz8IBnDTAJHfELn
 3l8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=cwYHKV4Nv1uy1+o5jfqgAAWN5reft6xsYAW/4An/l0c=;
 b=W7bkz6LvPLlnOSWMAbaAK5eUyGreNuTctxf79R80WKRTixXa5uF6oTZvqBJNoonSlh
 lMOhBGFTt/jxKdQPbTqSdfu9jvzfdtSNxPzd5p1PBGMncbczprJFPhzPmwFhn4TuuRDD
 /8fhtMzxatYlMgS+ECGEVGmtt2YuuWVxKtG7PzcoviOSc7H8DvdZPrfpWFbwNZdi/nkA
 Ziod9pZb407O+Cr18y5q0hsusd2BHr2BEZp/nzfg9IlnJIX2N0u6SlCwcyUTHeGVVIUx
 vFwFSqURXDkWpJ9/wbdI3p4pyUd1A8X9J9XAAmosVoVlduA9ZUdEPXE4Mw9cj8P3H35I
 LQHA==
X-Gm-Message-State: AOAM533BStB4wCB/NVojPI9skThNFY6T/8eBm+I7CsHih73oSxCOXRb2
 aujHoPqkwyjgpgOxD64FIEqe1GBhN9HS3DeqX3k=
X-Google-Smtp-Source: ABdhPJwjHc2lxszwmAEg+WipVaRgHZSCwI/s0VtEcyImguhZU52einVo1k+E79y7rll23Ep9XdVoXfqDaruB9J8XabQ=
X-Received: by 2002:a25:6705:: with SMTP id b5mr5483531ybc.116.1633086757067; 
 Fri, 01 Oct 2021 04:12:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6900:ce3:0:0:0:0 with HTTP; Fri, 1 Oct 2021 04:12:35
 -0700 (PDT)
From: JEAN EDO <jean79529@gmail.com>
Date: Fri, 1 Oct 2021 04:12:35 -0700
Message-ID: <CAO-KmWsbTjxHXtdoGv9PuTz7=cE=GBy1PVKuE_MBJVPZN57sng@mail.gmail.com>
Subject: HELLO
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
Reply-To: jjeanedo1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello Dear
My Name is Mr. John E.Thomas. Contact me for more information on the
transfer of ($7.9 million dollars) left by my late client from your
Country. I want to present you as a business partner and next of kin
of the fund. I will give you the details of this transaction, as soon
as I hear from you. I need the information below:
Full Name:
Address:
Occupation:
Age:
Personal Email:
Personal Telephone:
Best Regards,
Mr.John E. Thomas
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
