Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 319DB635DCF
	for <lists+driverdev-devel@lfdr.de>; Wed, 23 Nov 2022 13:51:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7710A60804;
	Wed, 23 Nov 2022 12:51:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7710A60804
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JeRHFdD5W0-V; Wed, 23 Nov 2022 12:51:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 31DC0605E0;
	Wed, 23 Nov 2022 12:51:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 31DC0605E0
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8A4F41BF2FB
 for <devel@linuxdriverproject.org>; Wed, 23 Nov 2022 12:51:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6594781E3C
 for <devel@linuxdriverproject.org>; Wed, 23 Nov 2022 12:51:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6594781E3C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jiEQVkcwDs-9 for <devel@linuxdriverproject.org>;
 Wed, 23 Nov 2022 12:51:07 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5FF4481E3B
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com
 [IPv6:2607:f8b0:4864:20::636])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5FF4481E3B
 for <devel@driverdev.osuosl.org>; Wed, 23 Nov 2022 12:51:07 +0000 (UTC)
Received: by mail-pl1-x636.google.com with SMTP id y10so15352957plp.3
 for <devel@driverdev.osuosl.org>; Wed, 23 Nov 2022 04:51:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=iDBDktp2dAH4BMUTnVh3Sy+nQlrp+kzNEX9Aa5/Yoms=;
 b=7EGJexjdlMBS/nASVcefSAvZNdAUcifwGH/Kp5+14hYLoghzpirrHjA+XHaeylGeYn
 sYbCb7+vgCRLHZevl/lUuI5EijQ0+8pYePm29CQDW+bga/m3Sox/eIbxcLJx5WP8Sk2T
 FsYIWGyLlYmTAKHvGpPec4WZx6gr8ELpiMw1TFtzeck4r7X1EeydZYk1a9dAvdgyyezt
 o59UhQQZ1Z3FeZe8ZvE/nDdh3Bip312GcWQIGhWx8FzRuD5VQbAUB3ZT159PYzNLKtsr
 haDHbevcO5rbTnZBmIMubm6rBxbXq4JyQRfTAWX64I1pRctoaf3YJTvACMB7ks7s4ZPl
 sG0A==
X-Gm-Message-State: ANoB5pkGLen8Jwwt+bkns96eo4JTNFAzjGMEGTPtNTpOAhB/H50ae4/u
 0kavW1Q5jMBm928DfQbsM8j5KNfW1LMOQPHTpQ4=
X-Google-Smtp-Source: AA0mqf6N31wLkF+o4aNfgG8KkA6r6YixPtxdKqS0T03OKxKBjgFXP4olb+WZczIhdBv56yqfj1q9cIftrXDJ1MPIb5Q=
X-Received: by 2002:a17:90a:14c5:b0:20d:bbe5:f35e with SMTP id
 k63-20020a17090a14c500b0020dbbe5f35emr30064990pja.120.1669207866341; Wed, 23
 Nov 2022 04:51:06 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:7300:a90d:b0:83:67e4:4a5 with HTTP; Wed, 23 Nov 2022
 04:51:05 -0800 (PST)
From: DR RHAMA HASSAN <henrrydonavon@gmail.com>
Date: Wed, 23 Nov 2022 04:51:05 -0800
Message-ID: <CAMj49ZEPGmWwhq3Gm0+MQEgGaEWkDchwDbuCbTTFENNDQyu2wA@mail.gmail.com>
Subject: thanks
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
 :subject:date:message-id:reply-to;
 bh=iDBDktp2dAH4BMUTnVh3Sy+nQlrp+kzNEX9Aa5/Yoms=;
 b=E2Wqk6fSyVH1w1f/R9gkt4ZhhLUElQSAMZ+dX2OuwV0VTWKlTqKWsmsUkcdinrb5gZ
 xmpT6W0BMFXhaOUOEJJpJGviEKJ657CoG36JBlbUGPx4WsNwRfuUW7jJSBSW9pb1/Jut
 y8upRV+ugUgW4OU3MHVKHE5neHqd+YoWn1vGFn+wDpq+tiPKgDbg9kaNSa9NWWyMYfwQ
 QpXtM+25o8EmpFYcbMR94aFLcx8nCfcQrLMUwC9d/Ayapq4u575htUxqbCPWwlJrrtay
 r5dr4ydhQDN+obIHBDoEdDz8vyiEmcxU78IsnlHq9XrotgKk+2vW5Tt16AwZcAtt+V/+
 GPTQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=E2Wqk6fS
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
Reply-To: drrhamahassan22@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Dr Rhama Ali.
This message might meet you in utmost surprise. However, it's just my
urgent need for foreign partner that made me contact you for this
transaction.  This business opportunity also comes out from the bank.
Am a banker manager in West Africa, I have the opportunity to transfer
the sum of ($5.5M Dollars) this fund belongs to our deceased customer
who died along with his entire family in a plane crash. the ratio of
60/40 if you agree to this business is free risk hence i work in the
same bank more details will give you for this. Please indicate your
willingness by filling your details once i get ur detail, i will give
you more detail of this business.
Expenses, I will take care of the expenses, if the bank asks  money, don't pay,

(1) YOUR FULL NAME...
(2)CONTACT ADDRESS....
(3)PRIVATE PHONE N0...
(4)COUNTRY OF ORIGIN...
(5)OCCUPATION.....

Thanks
Dr Rhama Ali,
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
