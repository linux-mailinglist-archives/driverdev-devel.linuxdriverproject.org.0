Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBBD66EFC31
	for <lists+driverdev-devel@lfdr.de>; Wed, 26 Apr 2023 23:09:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 112EE405B7;
	Wed, 26 Apr 2023 21:09:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 112EE405B7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vhvjVISsbJeG; Wed, 26 Apr 2023 21:09:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DD77840103;
	Wed, 26 Apr 2023 21:09:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DD77840103
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 656861BF5A9
 for <devel@linuxdriverproject.org>; Wed, 26 Apr 2023 21:09:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3D05441B4B
 for <devel@linuxdriverproject.org>; Wed, 26 Apr 2023 21:09:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3D05441B4B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UbwFzJZFU-p2 for <devel@linuxdriverproject.org>;
 Wed, 26 Apr 2023 21:09:42 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 03029418F6
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com
 [IPv6:2a00:1450:4864:20::534])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 03029418F6
 for <devel@driverdev.osuosl.org>; Wed, 26 Apr 2023 21:09:41 +0000 (UTC)
Received: by mail-ed1-x534.google.com with SMTP id
 4fb4d7f45d1cf-506c04dd879so13244070a12.3
 for <devel@driverdev.osuosl.org>; Wed, 26 Apr 2023 14:09:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1682543380; x=1685135380;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=JL3yT3Q33W5/BCQtgOVvz2cK4S2v0dqNTi6RS5aes9g=;
 b=YK9F4+bLovMdQfLRL7RZYAy1yjcG5xEa2/5VgJ1o0eVMlxwjg+RyjjF5xXycLdqZBp
 TGpUTFio8U+l+LrhAtQn4+KX5lLVU5eroy3OOUh9D1cnNl0dD7+xJGHmveDgUxwADKZ1
 zMEfNyun7NhbFZy0kzzHtUKtQOwCB3PdkBzOdQZEjL0wNepJM5vh2QP2hRhAo8g+zg1H
 ZNf+svzpwJDSe+VddluQMZRIWX/oxEOv2SLyCuN8kwhQi/EIls0Hk0eWQvcFlkIGwqLR
 QkOy5/x1JMwHXkFdi2OxedQ/mxmPSihCs/BaVZqaop6c3yxY+h6XIcSt2o41SO1lRSFB
 CZIA==
X-Gm-Message-State: AAQBX9cCl0Rt0NQJklH1R3AO3OsyhxUB4deS6jooCjRe2n8cfIoUGrYF
 7JLz0FeIyCzqVhRquRsriMJFKkvQF2c9A4jN9BI=
X-Google-Smtp-Source: AKy350b4ePCBe+Vb14j2wZK7ZizMDplq5F8ClpNEm0SkjjGBi55M6tp2UeqYQ4C3+RKCXOhzgUYO1Sbuy6EDTm2xxzk=
X-Received: by 2002:aa7:db50:0:b0:504:f069:c588 with SMTP id
 n16-20020aa7db50000000b00504f069c588mr17851386edt.26.1682543380048; Wed, 26
 Apr 2023 14:09:40 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:7412:4783:b0:c6:d649:3a3a with HTTP; Wed, 26 Apr 2023
 14:09:39 -0700 (PDT)
From: Mark Klassou <jamesjanneth27@gmail.com>
Date: Wed, 26 Apr 2023 21:09:39 +0000
Message-ID: <CADCRY1enuHpiR_GLCXzsVpFfxZsYVcUd0-60hysL0zVFBu-O4Q@mail.gmail.com>
Subject: Re
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1682543380; x=1685135380;
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
 :subject:date:message-id:reply-to;
 bh=JL3yT3Q33W5/BCQtgOVvz2cK4S2v0dqNTi6RS5aes9g=;
 b=e43pXbc4n3J9oPIs24yapud3cjtrAusSNJQO07TZQUrqx8bmv1IIqaetrhuqUJv73D
 2PNInhpCT5ybfPw+82pkEwy0quwipg2aW5CaoIIM0cM5DvCxF3l/MaYhPfbFnAlSM6zx
 k8zDmLJeMYNVaFsKThXYTCE+yLyacgcYaql0o8o5+2YMeCRIQu3BG1JvJW9z+hAQuiAq
 R4PHXcJBysclNG/mUGr6lWT3TWXPWU3XadMEd4+mAeQt/g4syQsseVSNUBSGNCRtqSgh
 uBe0Y3Mdyzw5KeXcApN5QfUtFug7XGh60KxWWmYQUjjQtLVXno7cWnC+sDxQea+CYCjv
 A2tA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=e43pXbc4
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
