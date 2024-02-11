Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A5C158508E6
	for <lists+driverdev-devel@lfdr.de>; Sun, 11 Feb 2024 13:05:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7096A82263;
	Sun, 11 Feb 2024 12:05:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MSr0aKI6q-fD; Sun, 11 Feb 2024 12:05:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AB23A8226A
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id AB23A8226A;
	Sun, 11 Feb 2024 12:05:14 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9CE581BF33A
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 11 Feb 2024 12:05:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 96B4240176
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 11 Feb 2024 12:05:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UQAyUqt733kV
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 11 Feb 2024 12:05:11 +0000 (UTC)
Received-SPF: Permerror (mailfrom) identity=mailfrom; client-ip=203.124.39.171;
 helo=symantec7.comsats.net.pk; envelope-from=naseer.a@kam-network.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 94399400FE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 94399400FE
Received: from symantec7.comsats.net.pk (symantec7.comsats.net.pk
 [203.124.39.171])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 94399400FE
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 11 Feb 2024 12:05:10 +0000 (UTC)
X-AuditID: cb7c27ab-549c6700000035dd-23-65c7fcba849c
Received: from host202003.comsatshosting.com (host202003.comsatshosting.com
 [203.124.44.148])
 by symantec7.comsats.net.pk (Symantec Messaging Gateway) with SMTP id
 8B.FB.13789.ABCF7C56; Sun, 11 Feb 2024 03:46:20 +0500 (PKT)
To: undisclosed-recipients:;
Message-ID: <8B.FB.13789.ABCF7C56@symantec7.comsats.net.pk>
From: "Anna Pechorin"<naseer.a@kam-network.com>
Subject: NO DELAYS
Date: Sat, 10 Feb 2024 17:22:18 -0800
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2600.0000
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2600.0000
X-Brightmail-Tracker: H4sIAAAAAAAAA03Sa0xTZxgH8LznRqkpnlWWHRCDw2sWVqBz4Zlui2w6TpRN92Emm9v0iCdQ
 5JYW5lh0K6OgwwE1gCIFbbTlUhAGFdsJCuNWsI4JI+MiaYeOUlhxQLBczNi4bAlf3vze/J/8
 83x4BLi4g/QVyOKTeHk8FxtACQnrmcC8VyNMHXxw8QwDHY1ysMxVYZCr4+C2sZ+CoXETBg1z
 J6Cx1EmCqzGbBENOtQc8ah3BIWuxjIDLDTk4tI79gENF79JXWdqEw7fOehLKyh8QcOHu0qOy
 zZHw5KYaQevMUbjmPgLdTgcCzWgZCbPXTBR0Vd/D4NJAEwHqlq8hTV+Pw8xgOwbWSQ0GloJ8
 DByDZhKK22Yw0OptGPxZ4Q8G55QHXLQ7SNBlJMP3w4MEzKr84eK509DyMJeCx/nKpWXHbR5w
 vnM9lFUWUWAvncDhJ3cWCVPPx8m9UtZ+YwGx7rZRnHVn/o6zGmU3wXaO9hFsrXYdO1J/FbFZ
 f/dS7DPVVWop/Adjdbp5jL2eb8LYnxtzcfapfphi799YROwDez9xWPKJ8M2TfKzsC14e9PZx
 YfQFtZNKbFr3peZOBalERs9M5Clg6F3MI105kYmEAjE9jJhpvYpYDrxpP6ZY84RctpjewnS1
 FK9YRO9hbi040LIpOogxplZSy95Ai5npsUls2QS9jXG396HV+ReYzit/rHTitJSpm3fhq/Zn
 TBNF+OoSIqbg3Aixah8mreLxf5Yy2RmjHqsG5qG1G6nR+sI1tYVragvX1GoRbkCMIiWOWzqv
 yFBJZEKcgktSSOL5JEniqVq0cmw7KszoXl5qUDPCBKgZMQI8wFvUU9DBi0UnuZSveHnCMXly
 LK9oRhsFRMBLosRNMl5MR3FJ/CmeT+Tl/6eYwNNXiZWHci+3ZndOnz+a0H5s4+ZdH+z93F7e
 xH239fldw/Ur6UpN6KGpnfLgruS+iQO7XWGBthCVpEaxb8o6tE8Z7qVP22Azf2w0fJoanuFz
 dtrbeCYF97VLf3sRo11xH+121ww5qp5V/3rnmyQVOW8Nfn3MFFP0fpjfW9vwkl+CFzbvv6Uf
 kqkOh1wOGziYTrd5+aXnPX2voa9SalYRVR+WDUR8lrIdf/fArDTC4joh1HrFhdcm3jyUXm15
 pycsqi0qeFOV+K+S0yUxgMmY3prbW+v6F+0+keZoY2BpT5XFi4jJON6wf3w7npDNvTbprNM1
 7NCevb/l4JFwdY6s/sfSN3buGQkgFNFcyCu4XMH9C91SCsnbAwAA
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=kam-network.com
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
Reply-To: anna.pechorin@yahoo.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello

I hope you are well and high in spirit? Before I continue, let me humbly apologize for coming into your space unsolicited. Nonetheless, I take solace in the fact that it is with the best intention and for our mutual benefit.

I chose you among other contacts that I came across in my search for someone who can partner with me in investment venture. It took a great deal of brain storming for me to arrive at this decision owing to my present predicament and solitude courtesy President Vladimir Putin, which I will explain to you in my follow up email. I hope that my contact with you will be private, confidential and fruitful.

Presently I am totally indisposed to carry out financial transactions due to restrictions relating to the suspicious death of my husband, Ivan Pechorin who was totally against the Ukraine war. Before long it would be discovered that President Vladimir Putin murdered my husband. My strongest desire is to partner with you in investing my family money domiciled outside the shores of Russia and you becoming my fund manager. I have no problem investing this money in your country if it offers investment friendly environment.

It will be an absolute pleasure, if you would have the wherewithal to handle this project to my satisfaction. Every detail concerning this project would be laid bare to you upon indication of your interest.

Please strictly respond to anna.pechorin@yahoo.com


Best regards

Anna Pechorin.

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
