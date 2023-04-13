Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 529C86E0E71
	for <lists+driverdev-devel@lfdr.de>; Thu, 13 Apr 2023 15:21:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E177940586;
	Thu, 13 Apr 2023 13:21:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E177940586
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Awycg8BHiYLG; Thu, 13 Apr 2023 13:21:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id ACF2840568;
	Thu, 13 Apr 2023 13:21:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ACF2840568
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 574FD1C3DCA
 for <devel@linuxdriverproject.org>; Thu, 13 Apr 2023 13:21:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3CBEE40586
 for <devel@linuxdriverproject.org>; Thu, 13 Apr 2023 13:21:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3CBEE40586
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id j7IYJlxBEIFF for <devel@linuxdriverproject.org>;
 Thu, 13 Apr 2023 13:21:15 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EF70E40568
Received: from mail-yw1-x1130.google.com (mail-yw1-x1130.google.com
 [IPv6:2607:f8b0:4864:20::1130])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EF70E40568
 for <devel@driverdev.osuosl.org>; Thu, 13 Apr 2023 13:21:14 +0000 (UTC)
Received: by mail-yw1-x1130.google.com with SMTP id
 00721157ae682-54c12009c30so388409667b3.9
 for <devel@driverdev.osuosl.org>; Thu, 13 Apr 2023 06:21:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1681392073; x=1683984073;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=5RfXJvDmjvocWuhXvJ6jLpYq4JXsjR+fgzQcvxm1L7I=;
 b=JK+1rHpnLgiMJBMkrT75ff87CE+bcza0MHY1jj9tIOeVGzUo8Tzesgc7pmUYzrHSse
 bF1gfBvpKaJAle9yEzY10KWmPGvp0NYw1HuIk0Jpi5Qajb15CD7Y5n4uSi8FG02H1fBe
 aHjfuhDJDyBV3nKEHmD6uAtnt3xCpnp5PMlJ8fUDZ0AG/6kBEiW4Cv4tuiIixRYQ8eX6
 rd6S+ryjP+i6geG9QOWKibA39LHX7iKqHANdUbOjMVJF2tSSKM8w9ZVdOfhbVfD7yBkL
 Oz4dOPV1p/jbp97Uq5HdN0ZlisPvvFzSqvKySUz0f06kJTqoL/Z+GsCsxLEAzJ2P3E/f
 xilQ==
X-Gm-Message-State: AAQBX9elbA1DxxWA2MWpDulVIBMLIxYbEsVyWONiOD/IexSFQQYOavey
 rjLwzVv4GV9DH5HANsb5oLMLbeHIT2c0BsOUJX4=
X-Google-Smtp-Source: AKy350agn/LRycndjm8YGy2WclrIKsEB2d1CBJzyimp346RorepQtIGISdOQfXlIcq17eOb4ZIEza26PL+EDFqHylL4=
X-Received: by 2002:a81:ac5d:0:b0:54f:b95f:8999 with SMTP id
 z29-20020a81ac5d000000b0054fb95f8999mr1298526ywj.6.1681392073615; Thu, 13 Apr
 2023 06:21:13 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:7108:3ad3:b0:2d3:8133:ef76 with HTTP; Thu, 13 Apr 2023
 06:21:13 -0700 (PDT)
From: "Mrs. Elizabeth Edward" <seniilboudo36@gmail.com>
Date: Thu, 13 Apr 2023 05:21:13 -0800
Message-ID: <CAC+vtA4oa3ga9Qu+aEEwFSMVG04pOAxWOfhZ3gV9Jx3TK5oU-Q@mail.gmail.com>
Subject: HELLO
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1681392073; x=1683984073;
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
 :subject:date:message-id:reply-to;
 bh=5RfXJvDmjvocWuhXvJ6jLpYq4JXsjR+fgzQcvxm1L7I=;
 b=EXSjhPILPslx5YeY2DPNy8KqpoqvfvuZsXDoZ/73wXFWsioUUzGxllM4x7wnG3wGty
 JVrJd3j8zcfZQ/+zR+Ku+xUGdWiCjpvudR5B5bP5uy+4U93JhEdcOiestUpJo9+lZEiL
 RvObOmxZtm87X2Eb3neBDPBZyrG4/AzzXKOq0vJ/1hqlDV8MRCHyC2GpdcIJywM6Dslq
 xZ8EPiPvtSxZ90syKtz5khMsyPxUpCesIjIYEFCe4gw/NQ0zAzgXxEYo+I6uxTEyb60g
 lFd7pLKgnik3Mcz04XulTUU4AiSe7zKLXIv8BDvqmpwCHp8OQzTGRLi+4MNeno2fEoSk
 D0/g==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=EXSjhPIL
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
Reply-To: mrs.elizabethedward77@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Greetings
Please forgive me for approaching you through this media. I am Mrs.
Elizabeth Edward, 63 years, from the USA, I am childless and I am
suffering from a pro-long critical cancer, my doctors confirmed I may
not live a few months from now as my ill health has defiled all forms
of medical treatment.

Since my days are numbered, I have decided willingly to fulfill my
long-time promise to donate you the sum ($7.000.000.00) million
dollars I inherited from my late husband Mr. Edward Herbart foreign
bank account for charities work of God and there is no risk involved;
it is 100% hitch free & safe because it is my inheritance from late
husband.

If you will be interesting to assist in getting this deposit fund
transfer into your account for charity for the mutual benefit of
orphans and the less privileged project to fulfill my promise before I
die, please let me Know immediately and you will take 50% percent of
the total money for your effort and assistance while 50% of the money
will go to charity project. I will appreciate your utmost
confidentiality as I wait for your reply.
God Bless you,
Mrs. Elizabeth Edward.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
