Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 198D56EFC3F
	for <lists+driverdev-devel@lfdr.de>; Wed, 26 Apr 2023 23:12:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9826941C47;
	Wed, 26 Apr 2023 21:12:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9826941C47
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IVznOr49C2ox; Wed, 26 Apr 2023 21:12:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4B69740895;
	Wed, 26 Apr 2023 21:12:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4B69740895
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 24B5E1BF5A9
 for <devel@linuxdriverproject.org>; Wed, 26 Apr 2023 21:12:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0B016417C1
 for <devel@linuxdriverproject.org>; Wed, 26 Apr 2023 21:12:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0B016417C1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FFAIWOEh-4gE for <devel@linuxdriverproject.org>;
 Wed, 26 Apr 2023 21:12:41 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 646C340895
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com
 [IPv6:2a00:1450:4864:20::529])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 646C340895
 for <devel@linuxdriverproject.org>; Wed, 26 Apr 2023 21:12:41 +0000 (UTC)
Received: by mail-ed1-x529.google.com with SMTP id
 4fb4d7f45d1cf-506b2a08877so13272159a12.2
 for <devel@linuxdriverproject.org>; Wed, 26 Apr 2023 14:12:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1682543559; x=1685135559;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=JL3yT3Q33W5/BCQtgOVvz2cK4S2v0dqNTi6RS5aes9g=;
 b=CoSJ5DgO6yNclJlZS3NVxQfNYAF3PFRNpLC3HL9WrHZ6dVTP5yRmINm+xznQzEfTlj
 htQwW+5kqxkXRc4f3ZFqKM2t3PYplJueh6VGB2Jc41AindDtqA9RJN3LB0lRShfc1K4y
 VlZNw6XrI8JSnqcRem5cFVibLnH6yPMkvDrg5KDB6dJt7v/Jh1ytNrwizrpGlob3j/LM
 i1BornRLa4qhZwUh7Eq9YpS/hImfudeZMxJOBsvsMOh2VJLa1cDQo6mzkotxAK7xQaHv
 HmtvIuP/5VGSmzTMgysBSdtWMllQ38G5ycKNo9SPeBfCRVBwgxTYN1+Sh8S/dfmCQ7e8
 W3Jg==
X-Gm-Message-State: AAQBX9fzCQ0u7WfNWcmmeBdG2PYSf6IyhwbI+Q45QD1XymEpDezIPxi9
 73Q9Ju2dtMLtUqYgzeUVWGISktBHMLCg2C8ep5A=
X-Google-Smtp-Source: AKy350ZMkJWaPXgFWKwG2kHLfJyUQbNDDqzihFS7PKIB2wvrmDVkktg1oLkCldiPTbcICArOT94ZmudLvp2y5pZIAlM=
X-Received: by 2002:aa7:d9d0:0:b0:504:8014:1554 with SMTP id
 v16-20020aa7d9d0000000b0050480141554mr17359887eds.28.1682543559420; Wed, 26
 Apr 2023 14:12:39 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:7412:4783:b0:c6:d649:3a3a with HTTP; Wed, 26 Apr 2023
 14:12:38 -0700 (PDT)
From: Mark Klassou <jamesjanneth27@gmail.com>
Date: Wed, 26 Apr 2023 21:12:38 +0000
Message-ID: <CADCRY1fK_1XJe_zEtVqGfxpx4s-ckGggnLEY0-fGwmA-vaRf3A@mail.gmail.com>
Subject: Re
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1682543559; x=1685135559;
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
 :subject:date:message-id:reply-to;
 bh=JL3yT3Q33W5/BCQtgOVvz2cK4S2v0dqNTi6RS5aes9g=;
 b=UsES5JPzF4QSxtGh9uAHeXJEIwute7J/gaibl89GNu/htXU23RFo2DglOmsQHdsAOn
 SdAKm+yZjAS9QNPOUoaC8zkns+U2dd16eoiMte0z8/2+WU/FtBMjWmbMyy2YNIHhbcat
 qP9CbOgRbir5FVYg0234DBkeMD2DHY8c9rsqx2tG3Zyavh6m1i4LGGMTT2ZNO878kHkD
 xr01gPyfHvvXZ7jsBce9mUmy2/Jf5m5j4ByXbv/TcmLIhxT53A4cbfh6wvu6tBbEAEz0
 w0pOZlC5Ml0sa7nIdLki6cL5/NxbLAQbkCekrvN5g9ct0AZYnPLXv2Yk6Y0ZRbWJ54N5
 FPEw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=UsES5JPz
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
Reply-To: klassoumark@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Good Morning,

I was only wondering if you got my previous email? I have been trying
to reach you by email. Kindly get back to me swiftly, it is very
important.

Yours faithfully
Mark Klassou.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
