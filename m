Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E8961177E39
	for <lists+driverdev-devel@lfdr.de>; Tue,  3 Mar 2020 19:03:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id F10CA86833;
	Tue,  3 Mar 2020 18:03:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KgJ8h1XVMmN1; Tue,  3 Mar 2020 18:03:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E507B85C45;
	Tue,  3 Mar 2020 18:03:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B4C941BF59A
 for <devel@linuxdriverproject.org>; Tue,  3 Mar 2020 18:03:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B1AEB20505
 for <devel@linuxdriverproject.org>; Tue,  3 Mar 2020 18:03:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9ue7MqHor2c2 for <devel@linuxdriverproject.org>;
 Tue,  3 Mar 2020 18:03:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f193.google.com (mail-il1-f193.google.com
 [209.85.166.193])
 by silver.osuosl.org (Postfix) with ESMTPS id A3AEF203B5
 for <devel@linuxdriverproject.org>; Tue,  3 Mar 2020 18:03:20 +0000 (UTC)
Received: by mail-il1-f193.google.com with SMTP id a6so3594649ilc.4
 for <devel@linuxdriverproject.org>; Tue, 03 Mar 2020 10:03:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=42VRx4KA+cD1ZZnhz/34yl/kjJSKnU+ahvHX6e7S6BM=;
 b=djC0XGADAnbrPyYXd+ZqYKxBg2S7T91DnEpqgjop9nfzlkQorFedEvdKXYCovLZXPW
 iNjFG76KaC52ZaKIv231754EqOLXd4/VcQ/b938l4TpTYI43d9uyAql8bMe/hJfNqUJm
 0tFDmZiYjq42x5MgsA6L4+Pd6lEvReGO4bBcLrRzAHrL9KwtrPfjl3VghoiZ+0x4oomJ
 aXjrpJAKjz+G7xEzEqFbA2aDfvA3BB6RDTXVp8WXEP9ZYtLtPpQzM7g5Iq8hBhxvqGjw
 CirMSPLCrp/BFI+iChJTb2RUq9uTfpQsaeIftTfCfXarRSaVvoFF4KwNybZ5vJJPMof8
 UXjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=42VRx4KA+cD1ZZnhz/34yl/kjJSKnU+ahvHX6e7S6BM=;
 b=WhagiipN/yLnQt99euAzqrUtkFaYrqphl+PZLJ6CYKIMs69WLWcPJtWTJaR7cEJsV9
 72GOPslxwuPoiM6MzUh9MuV6vR43dR5scXuUjPpM6IC+5RE1XMqXFem4L+YV9kVc+wYy
 kMM6X5nQlKb3kDd7wz9F/Et1cLs6uZWqtQc8wMICVjxqdJuDaak9hwHUANB7XYLGF+Cq
 j8m+giwcgCGNE+BhKm8ZR7q15VakAXrsmjAmIIK9IRcmwTNUkrkSJu0G3FLxTE7CVCWq
 MV3D4vX/1cSbf99/uQs3Zwm/0vCe84xOUheF8etc5oAhONQPslvQIAyU6XGpHM/DaGa+
 4X+Q==
X-Gm-Message-State: ANhLgQ2LC88G9vtHsMOhlEvr9PAfClZ4Ev3Dw6PDh3LZa5K9zpCDzFeo
 DikMLvgfWmyC+PmQqXlV4Pe66pKIFD6eUV3Tryk=
X-Google-Smtp-Source: ADFU+vtoMf45YvZZUDrPz8OSNVaYuMbd9WN2/xn+zMePyLKP6I4oYHl7prkur663eM+4xSgehmzKPXMY7gCNa4s9DM4=
X-Received: by 2002:a92:244f:: with SMTP id k76mr6153271ilk.290.1583258600036; 
 Tue, 03 Mar 2020 10:03:20 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a02:9f04:0:0:0:0:0 with HTTP;
 Tue, 3 Mar 2020 10:03:19 -0800 (PST)
From: DR CHALLY NOAH <mayorabrahamedge404@gmail.com>
Date: Tue, 3 Mar 2020 19:03:19 +0100
Message-ID: <CALqVJWc_idiEc9g+DunbU-QBADFbapZfkb3RNpEsqZunBtr7JQ@mail.gmail.com>
Subject: Hello Dear
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
Reply-To: dr.challynoah@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello Dear,
What Have Kept You Waiting To Claim Your $600,000.00 USD Compensation Award?
This said fund was issued out by the UNITED NATIONS To compensate
you.Please If You Have Not Claim Your Fund (Award),Kindly contact me
at   DR.CHALLYNOAH@GMAIL.COM   for further details on how to proceed your
fund (award)release to you or better still reply back Immediately You
Receive This Information For An Urgent Confirmation And Release Of Your
Fund To You Without Delays, as your email was listed among those to be
compensated this year.Congratulations..
Best Regards,
Dr Chally Noah.
Minister Of Finance On Foreign Remittance:
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
