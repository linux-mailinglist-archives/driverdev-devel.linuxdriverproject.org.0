Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DC60544E373
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Nov 2021 09:45:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EAA5381C6F;
	Fri, 12 Nov 2021 08:45:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nCRIeo6kSvIC; Fri, 12 Nov 2021 08:45:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 42F7980F0E;
	Fri, 12 Nov 2021 08:45:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 06E8A1BF36F
 for <devel@linuxdriverproject.org>; Fri, 12 Nov 2021 08:44:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EB37D80F0E
 for <devel@linuxdriverproject.org>; Fri, 12 Nov 2021 08:44:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nLrx6dQqejHj for <devel@linuxdriverproject.org>;
 Fri, 12 Nov 2021 08:44:49 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ua1-x92e.google.com (mail-ua1-x92e.google.com
 [IPv6:2607:f8b0:4864:20::92e])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AF02680D25
 for <devel@driverdev.osuosl.org>; Fri, 12 Nov 2021 08:44:49 +0000 (UTC)
Received: by mail-ua1-x92e.google.com with SMTP id i6so17344668uae.6
 for <devel@driverdev.osuosl.org>; Fri, 12 Nov 2021 00:44:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:sender:from:date:message-id:subject:to;
 bh=JKfhzZRk+ikl/DjYAcyNINQGuwC/OA2Ya0AUkN5ZsLY=;
 b=RQjD7NCH0r1yhlQtp3Rj1c3QMC8o7emY1JsJSaJMEFnpmUd2ENdcu8mUGbEsHIdvx8
 zI5j1e1p3Kn8TWN5UE3T9PYsvrAzfUkd9VgZeCI3pI6XCydRnxSe5QVY9pKpXoIxO23x
 BJm6rPsOy/jzVzUyqzsz4nKf3yC4216FFdaKs5toATjw2VokQIzjPWj5aNQ5ej658Y6i
 JmbhQ730jRXZAuJSvVrMzlGqmF6EuUnF+BHDs+ASLAUH01Bha2c4HJtlYcEAooOvuTU3
 McZycOHAsjHIxH0xvjd/7N/VeR7dUOtBGJ36DaIBq2Q7Ay83TAulEYyg5i51Y/Eju34G
 ariA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
 :to; bh=JKfhzZRk+ikl/DjYAcyNINQGuwC/OA2Ya0AUkN5ZsLY=;
 b=7llUXD5WYWvAQ1fmn4HZ+2u2T9XMpqoZ7GQl16Zn4xcmod1D2hFbuBmMXlUWmQJi9o
 hYV2vXdOJKT6sxAypyEv59KEmH+ZYe1MYz7hw6d5vSz8oy2csflhQsXrMrYmw7PibalG
 c1P8Sf8JoZftyTuQjkO0lAWVHDsh6GNjNtvZI61m/u+x2sBCBrNljOFphTBzn1uoatSe
 6D09HHHRsUegFZoyLXEJwfbdYOGgEhMcPIa1w3pVSr1LlcDggF54ks43l0Lff2HOdx4Q
 f2vv6VwggZkeRm0Pixp7WFMe3ZocLJV4ipnDwno1230NbKZdwfFh7wXBxam8JfG+1vbd
 jwMA==
X-Gm-Message-State: AOAM531n4nKkKsSaOIkmy3SX10fYQhCNZLPV1lidyKfe/gPb5kW+nukW
 7WdheXytlBvXnCjjOs4zrtsUuWTF2RVuskNpHEk=
X-Google-Smtp-Source: ABdhPJz8HTt6yfWn1WGHP1XY5QMQB5sg3UXFp28SqVasaUbuUwJLyIlt5ZZo+pDHRuGRu+2U5oBJbj1wSFYdqQlDxW0=
X-Received: by 2002:a9f:21e1:: with SMTP id 88mr19633707uac.79.1636706688522; 
 Fri, 12 Nov 2021 00:44:48 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ab0:66d6:0:0:0:0:0 with HTTP; Fri, 12 Nov 2021 00:44:48
 -0800 (PST)
From: "Mr.Musa Abudu" <musaabudu764@gmail.com>
Date: Fri, 12 Nov 2021 09:44:48 +0100
X-Google-Sender-Auth: zBCsiejCF7MlB9111dlfbdrSFAE
Message-ID: <CA+ifKVf-TseQzTGvD4ZT9kYLiA9=Xudf=QUfuGYONTNpiELDHA@mail.gmail.com>
Subject: PLEASE RESPOND VERY URGENTLY
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
Greetings From Mr.Musa Abudu

 I have a Mutual/Beneficial Business Project that would be beneficial
to you. I only have two questions to ask of you, if you are
interested.

 1. Can you handle this project?
 2. Can I give you this trust?

 Please note that the deal requires high level of maturity, honesty
and secrecy. This will involve moving some money from my office, on
trust to your hands or bank account. Also note that i will do
everything to make sure that the money is moved as a purely legitimate
fund, so you will not be exposed to any risk.

 I request for your full co-operation. I will give you details and
procedure when I receive your reply, to commence this transaction, I
require you to immediately indicate your interest by a return reply. I
will be waiting for your response in a timely manner.


 Best Regard,
 Mr.Musa Abudu

 NOTE: If you received this message in your SPAM/JUNK folder, that is
because of the restrictions implemented by your Internet Service
Provider, treat it genuinely.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
