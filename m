Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 994F7707B14
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 May 2023 09:36:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0DC7460FEF;
	Thu, 18 May 2023 07:36:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0DC7460FEF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jUbGbAEoDz82; Thu, 18 May 2023 07:36:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E57496FF4D;
	Thu, 18 May 2023 07:36:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E57496FF4D
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 83B591BF46D
 for <devel@linuxdriverproject.org>; Thu, 18 May 2023 07:35:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 63C9E83CDD
 for <devel@linuxdriverproject.org>; Thu, 18 May 2023 07:35:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 63C9E83CDD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id f6oBVSWIdbMv for <devel@linuxdriverproject.org>;
 Thu, 18 May 2023 07:35:56 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 89B5583CD0
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com
 [IPv6:2a00:1450:4864:20::12b])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 89B5583CD0
 for <devel@driverdev.osuosl.org>; Thu, 18 May 2023 07:35:56 +0000 (UTC)
Received: by mail-lf1-x12b.google.com with SMTP id
 2adb3069b0e04-4f24d4900bbso1975942e87.3
 for <devel@driverdev.osuosl.org>; Thu, 18 May 2023 00:35:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1684395354; x=1686987354;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=oDVdWICwavrWQ8UAVYhe8ynFXsBBW1vVQ7W08zgiq24=;
 b=PnUU4q0RX5QLQz3hWK7j6f/ekZ4fXm76I2MRvnxRLZapbuOLfNp3hXkqjax5+BxeN/
 QW94dHg7lZUTQTVovcjn3rccHzUiuT0pF9gcqs1G166xUwIp5MiCZ25JLAzjpbIN9HRP
 JMvpRvdP4fhlUm8ulArHEs6PQOZg8FKEwH3B9NGVbJfecAJYGzVsPn9Wwu4vxh8FwvcY
 LJjMEaYMIU6PpCHRo43p2oaRERMr1hZ4zITv4ON62fn6FrjOMzeqjUedEF2nKO/EELTr
 qew4z3MsKs2TJLjQhfjIek4IJJ0sUnlFB+emVaVZO6c0hs8xtpbu4cErsK3A9w5eiHjY
 JzQg==
X-Gm-Message-State: AC+VfDwzHT0xm+CnW594oQj+M53NS8jN25MOAKBnWXMgBv4ahvriWvZM
 96PI+BWgc1oGaf88M6mJ+0k6urxBQWkoE4O7pcU=
X-Google-Smtp-Source: ACHHUZ7OBlZOhjYeUMzM16aAkZtro867JBBU9JeGHMi14QPHyzINvvnNtyrB6OYp5edKVcMrxuYeZOaKu6i8pxHq3GI=
X-Received: by 2002:a19:7002:0:b0:4f3:a556:61b6 with SMTP id
 h2-20020a197002000000b004f3a55661b6mr280788lfc.3.1684395353981; Thu, 18 May
 2023 00:35:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab3:7310:0:b0:222:5939:ed00 with HTTP; Thu, 18 May 2023
 00:35:53 -0700 (PDT)
From: nina coulibaly <ninacoulibaly214@gmail.com>
Date: Thu, 18 May 2023 00:35:53 -0700
Message-ID: <CAL5O4-Hyd+fb=wVCx=sAqKemgXnowKVfu_c6uX6ndWagpj9kUQ@mail.gmail.com>
Subject: from nina coulibaly
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1684395354; x=1686987354;
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
 :subject:date:message-id:reply-to;
 bh=oDVdWICwavrWQ8UAVYhe8ynFXsBBW1vVQ7W08zgiq24=;
 b=mh7/+/8lvxQFJZg/TWyopRQy3ygLFkrqUkr3bZmZDMeeaPKQRmd7Dsdt68ol//Wsrf
 +3tYnjggr6IOJaMrlSgvFeVdfJx3nUA8leuaU5iidvxlVKwP2tyIbgs+6KhmoiK4xy70
 dhkpYhmoFUTmq+2FUPszYdY5QhWvKx2EsMKfZcPE4MDkoXeruw+hPmSc5jqKN1Pf8aEX
 xq+H6iR+ornthimBwp1pur60bcYguHcaPuebkAy1r9UG+8vrJk+nsv+oaOgBktgnyA1F
 jLiz3EevimLYyZCLxjSodIv2OUVi+P5Hms+okOGH4TBJhOMSaRQ851h752wnLSIcnAoH
 /zEw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=mh7/+/8l
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
Reply-To: contact.ninacoulibaly@inbox.eu
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dear,

I am interested to invest with you in your country with total trust
and i hope you will give me total support, sincerity and commitment.
Please get back to me as soon as possible so that i can give you my
proposed details of funding and others.

Best Regards.

Mrs Nina Coulibaly
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
