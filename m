Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id ED4006DC7A8
	for <lists+driverdev-devel@lfdr.de>; Mon, 10 Apr 2023 16:09:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2F1824172A;
	Mon, 10 Apr 2023 14:09:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2F1824172A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y9AWOFfCxXmu; Mon, 10 Apr 2023 14:09:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D09F0409F8;
	Mon, 10 Apr 2023 14:09:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D09F0409F8
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3D1B21C3B5A
 for <devel@linuxdriverproject.org>; Mon, 10 Apr 2023 14:09:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 23A3240B84
 for <devel@linuxdriverproject.org>; Mon, 10 Apr 2023 14:09:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 23A3240B84
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fjN8MCd8Id9c for <devel@linuxdriverproject.org>;
 Mon, 10 Apr 2023 14:09:35 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1068D40493
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com
 [IPv6:2a00:1450:4864:20::631])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1068D40493
 for <devel@linuxdriverproject.org>; Mon, 10 Apr 2023 14:09:34 +0000 (UTC)
Received: by mail-ej1-x631.google.com with SMTP id gb34so12915145ejc.12
 for <devel@linuxdriverproject.org>; Mon, 10 Apr 2023 07:09:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1681135773; x=1683727773;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=8K14qJ6Ro1/mQzioNMElj5XNtfSKCBkWNmckn1KoVf0=;
 b=BREQA+nuKSgB76J432I7QwIPuCfNrXDKbh9zKf9uz+3lMQT5/B/vPtZWXHOnijNJgK
 mQwaveOb9Mwn+xSqHqaw9ghzNTlZft9fYRr1myHEuHBR2HJjw1QPCA1jgtc5vjndawGk
 eN1kBMwYWW4OYnTjyvAgwMOLOxc3Wa19b9hT3fxBAwhaL/AfEAScnXwIf6Z5GKZoAkJb
 A8+mk9dhAkZcL9pY57yftwY7u79UWVpj1LILlJsW7yB0VVQC8yNv4w/vf1+2+7lgsR1S
 H6TMNF2RYoRpsbcWega26YLm12L6dm1cg1Q71JvqPswbqzhukQiRbjK17ahs3mL/S3wn
 atig==
X-Gm-Message-State: AAQBX9daskSXp454MBp2PDdQuFg7PJh25RFeVwTlKLf+4gvOlbIF2nvX
 Zth1h2ZovF+qmW0HRz72129wsTW3U0bCIfnHP2k=
X-Google-Smtp-Source: AKy350ZI8zhoizkwU4SgnF5naYkKZIoz3MghWTLlkEIAI9qekl6e91HOZ9YszOHYSTqnPnRAnpT3yNo5FyFm84AwVkY=
X-Received: by 2002:a17:907:96a6:b0:931:7350:a7b6 with SMTP id
 hd38-20020a17090796a600b009317350a7b6mr3890818ejc.10.1681135773066; Mon, 10
 Apr 2023 07:09:33 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a50:33ce:0:b0:205:17d8:d5bd with HTTP; Mon, 10 Apr 2023
 07:09:32 -0700 (PDT)
From: Jeff Bezos <santuschris69@gmail.com>
Date: Mon, 10 Apr 2023 07:09:32 -0700
Message-ID: <CANRof_CxUTfEPSbnO+Qa5LUENuti3JrfdZuiqme0eqf+QjS3ug@mail.gmail.com>
Subject: RE:
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1681135773; x=1683727773;
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
 :subject:date:message-id:reply-to;
 bh=8K14qJ6Ro1/mQzioNMElj5XNtfSKCBkWNmckn1KoVf0=;
 b=kRwNru3WflkhLJUJEsrTrNR8YmjM11dB3zNujZjTFyMhrA9DIRuGIZme1WKMzBCUMf
 nHTvdNZzw5w5eP73rn1V2zVn8Bm+8XLDUabbvPArOHYtv6FLHlF/w2IB4JmfBFphYn58
 8AQqaEdqOwqP6tV/KSTw/krVUiPBgxmsY11RTIz3iYXSH+yIbJnZE6pshoL9eAwro4tz
 UidNjTLe29qddeM1ncM2zeBjVja7bZ1dGSJSOmq+mmF7PwGza9Jxz3BcOaUAXb58DrJj
 vUU1NuaUcdR610JkrGkxU3RiTMvPA4gsXdjt5jloBwmoDGOY2KkNc5e4tKWIyrGoW6kG
 78Dg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=kRwNru3W
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
Reply-To: deborahjennings201@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
I'm Jeff Bezos,

The CEO of Amazon, it's on this note that I'm informing the world of
my intention to give out my Fortune of $124 Billion of my wealth to
the lucky ones around the country and world at large.

Your email was randomly selected to be a part of the people who will
be beneficiaries of this charity project. each person would be awarded
$520,000,00.

(https://www.cnbc.com/amp/2022/11/14/jeff-bezos-says-he-plans-to-give-away-most-of-his-124-billion-fortune.html)


Contact the Agent on how to proceed.
Email: deborahjennings201@gmail.com

My Best Regards..
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
