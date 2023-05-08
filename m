Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 41DFE6FB367
	for <lists+driverdev-devel@lfdr.de>; Mon,  8 May 2023 17:06:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CA2DC41DAE;
	Mon,  8 May 2023 15:06:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CA2DC41DAE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XHXTuY6VK840; Mon,  8 May 2023 15:06:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 82FD941D67;
	Mon,  8 May 2023 15:06:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 82FD941D67
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 473641BF360
 for <devel@linuxdriverproject.org>; Mon,  8 May 2023 15:06:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2097484370
 for <devel@linuxdriverproject.org>; Mon,  8 May 2023 15:06:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2097484370
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wz8Su8o3KLVt for <devel@linuxdriverproject.org>;
 Mon,  8 May 2023 15:06:14 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 70F8084350
Received: from mail-oo1-xc43.google.com (mail-oo1-xc43.google.com
 [IPv6:2607:f8b0:4864:20::c43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 70F8084350
 for <devel@driverdev.osuosl.org>; Mon,  8 May 2023 15:06:14 +0000 (UTC)
Received: by mail-oo1-xc43.google.com with SMTP id
 006d021491bc7-54fb46d8631so67133eaf.1
 for <devel@driverdev.osuosl.org>; Mon, 08 May 2023 08:06:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1683558373; x=1686150373;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=hvylHcPwsBXB0nmQthlymsngVMpocAeJGjYYSYMz78s=;
 b=WLADfJSjQ/AwMUwAcHbrJILXdIurx3e5dEuhuVbYMGFIaQjznRzM1g5s971Ac1nCsS
 4B/APwGKoWef5J+rbI80bTKFSlXhQl/gr9ioli9FnH8489Wb/G8ptiZirHXqib5HoP8t
 cX5X075NsIGe73gWsFWLWRJs/+GrHbxUqzm1tPEUEzxkSvzI0VDF27JEWPMNs8MW/i8t
 U7pIMPnNX5eDCe9hFv9TQ0mm5paKJ6VMYHGwBLMj/Jq63yET8V3awEref93Nul4akZZy
 cLU4Fkq6r3jLGWQbAnGLO2SqJhx57clvmZJ9wvgeB0VH0DuLarOtMdATojL9LxTQaXN3
 6RtQ==
X-Gm-Message-State: AC+VfDx6XGLYBGLUuIfNV92RDH2GDQSrcHFDnJgoMxIx7Dpqic3ZZbhn
 7qibWuGYoYPONrHrayEkk6xv0ib/pZv9vNfJ1w0=
X-Google-Smtp-Source: ACHHUZ4HE5rGffbd9JZv+TthgKqHySN44MFNq2Naam6x9JUoKCfE0rjlPu7B1B0RVMhnSHLnS+Bq58/txIu6wiR6iG8=
X-Received: by 2002:a4a:7645:0:b0:54f:60da:cd0f with SMTP id
 w5-20020a4a7645000000b0054f60dacd0fmr2219255ooe.2.1683558373086; Mon, 08 May
 2023 08:06:13 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6850:2c8f:b0:48d:a943:54ef with HTTP; Mon, 8 May 2023
 08:06:11 -0700 (PDT)
From: Karl Heinz <bostharley@gmail.com>
Date: Mon, 8 May 2023 16:06:11 +0100
Message-ID: <CAFF73scxhSeD1kdwC=rk5mTQDLw7iSZR2_qgb16T608TLhnn6A@mail.gmail.com>
Subject: Good News Finally.
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1683558373; x=1686150373;
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
 :subject:date:message-id:reply-to;
 bh=hvylHcPwsBXB0nmQthlymsngVMpocAeJGjYYSYMz78s=;
 b=C+/3IORsNrbOJ8PlA4dV1oZvdJec60jo+ug6VyaT87HRbxIWLLVf+6sXuCef9Y3K/r
 SEVcIwRStLssngcRkihD9jqNzCCxcxIkOj7CZ0l/cARBgkfPJrO/hN3pWjzRbQHn+IPy
 PVbEeNLuJLzi8jMGI9/rT7/M08X/WLKMQsEXpSUWjxr1KMQ3g3g60OwcohPUHVPPaKMH
 P9Qez2Sf268BHGgtUYxKibLI5Dx1ZW14pitIX0MoOHn8K9m01sCK4Jx6S32SJcXm2ZDa
 LtBGX3qFy4YaEcr7BVcHVnrLsoZ2B2eyyuGYMDM8JhdLZvpNzni7F06xRwZZmObJIkEY
 OXzQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=C+/3IORs
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
Reply-To: rev.francisedward@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dear Friend.

You might find it so difficult to remember me, though it is indeed a
very long time, I am much delighted to contact you again after a long
period of time, I remember you despite circumstances that made things
not worked out as we projected then. I want to inform you that the
transaction we're doing together then finally worked out and I decided
to contact you and to let you know because of your tremendous effort
to make things work out then.

Meanwhile I must inform you that I'm presently in Panama for numerous
business negotiation with my partners. With my sincere heart i have
decided to compensate you with US$900,000 for your dedication then on
our transaction, you tried so much that period and I appreciated your
effort. I wrote a cheque/check on your name, as soon as you receive
it, you let me know.

Contact my Pastor now on his email: rev.francisedward@gmail.com
Name: Rev. Pastor Francis Edward

You are to forward to him your Name........ Address.......,Phone
number......for shipment/dispatch of the cheque/Check to you.

Regards,
Karl Heinz
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
