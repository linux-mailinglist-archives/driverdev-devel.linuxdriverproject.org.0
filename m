Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ECCB7B3ED8
	for <lists+driverdev-devel@lfdr.de>; Sat, 30 Sep 2023 09:38:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7D83F4226E;
	Sat, 30 Sep 2023 07:38:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7D83F4226E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hzc3Hu5FfQdo; Sat, 30 Sep 2023 07:38:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 22E7D416CC;
	Sat, 30 Sep 2023 07:38:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 22E7D416CC
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 353F71BF397
 for <devel@linuxdriverproject.org>; Sat, 30 Sep 2023 07:38:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 09BD560F07
 for <devel@linuxdriverproject.org>; Sat, 30 Sep 2023 07:38:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 09BD560F07
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RBL4lPwlIq8g for <devel@linuxdriverproject.org>;
 Sat, 30 Sep 2023 07:38:18 +0000 (UTC)
Received: from mail-yb1-xb42.google.com (mail-yb1-xb42.google.com
 [IPv6:2607:f8b0:4864:20::b42])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 459BE60E6D
 for <devel@driverdev.osuosl.org>; Sat, 30 Sep 2023 07:38:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 459BE60E6D
Received: by mail-yb1-xb42.google.com with SMTP id
 3f1490d57ef6-d852b28ec3bso15937354276.2
 for <devel@driverdev.osuosl.org>; Sat, 30 Sep 2023 00:38:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696059497; x=1696664297;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=E4hILv0ZJTPcTKq+HIPobDeeLsNePmqEbf2vve78uUU=;
 b=qZqDhkVvOyTaDeVaEzxO/ElZoQmrW0TpLIBV4AF6L+W2aBH28kdj391Ekc6tnrCVar
 BmHlUqsU2S5Ni1L0gjcvXTgt5lABcvWcnSPswU/J+rMQRILu6ivmZ77fDocITS5lcoyL
 G0xfoNtIDOnYWGiqQ7y6qfi9F2DoTES0Pv0GaSIyzwU4kVslLDpNpmkPzpwZuz+S1L4t
 sWBEKIzWgzOe/8KcwTX7zjD2mqEcef59Bq8DJ1m3ApQJB/ZRjEl9FP8cO7PxZJ54OREp
 7dWTeJBAVn0+koh1n9/kV61ELtNeI3nIXUtFCKTbh1heF/8dZ7bNU+MVnOQmQyQ6hMyc
 LcYw==
X-Gm-Message-State: AOJu0YxWdI/3/7RlYDglvVxJAl0WizdZUB4G/ZY+QFzzzikArW4/e8Zk
 p41GgReN9xufCM3KaPACJmU+RVEik7AwRkQctoY=
X-Google-Smtp-Source: AGHT+IE2FVEfqS/1Pp+DdVg2cmInWcIKFipU5/jbnSD77qOCeX1ElIMif+iFeRrKlbzO+DfL+xRUcFFFmJBkp11Qe70=
X-Received: by 2002:a25:e7cc:0:b0:d7f:f5e:a2bd with SMTP id
 e195-20020a25e7cc000000b00d7f0f5ea2bdmr5961992ybh.10.1696059496732; Sat, 30
 Sep 2023 00:38:16 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:7000:4a56:b0:4fc:dad8:dbcf with HTTP; Sat, 30 Sep 2023
 00:38:16 -0700 (PDT)
From: Dr Rhama David Benson <sarr33375@gmail.com>
Date: Sat, 30 Sep 2023 00:38:16 -0700
Message-ID: <CADcpudvEcMt83t+6jtvnQFyAs6W4-xSmwb2iT678HQY3EsJBkQ@mail.gmail.com>
Subject: URGENT RESPOND
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1696059497; x=1696664297; darn=driverdev.osuosl.org;
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
 :subject:date:message-id:reply-to;
 bh=E4hILv0ZJTPcTKq+HIPobDeeLsNePmqEbf2vve78uUU=;
 b=Q7wbgxnFCe1bXd9PyLuwBL7XhEpfYjtdHUEKugQKIFbEmc6/VWbJ/ko7pvn31x4Nct
 G4ICq1RNKSMvOf5kFmCxoUrVYNc6GNv+01Cm/97J1FKUcGYOjDnNDBFaJtlqfNA1FWOQ
 mvIF9ztm1R15OU9M4eTjAxB1XIUVH+ArRer+57fdxEtFQAKaXwdaCrZPRPV6PPJQWR7L
 KJlIHvtr0PpmtUDTARdqlCToQePHSiYdGIcm8IOaY/iKwe4KhcmaaWE50plXn5HjbFag
 BWZr4muM+NT/aH2x7TqykFruFWuajdaYnQ+zwd3yBUjCDhWy55Z96kAKEAcrEljWE9f1
 oOXQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=Q7wbgxnF
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
Reply-To: drrhamadavidbenson@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

I NEED YOUR URGENT RESPOND

Dear friend,
I am Dr. Rhama David Benson, I work with an accredited bank here in Burkina
Faso.as manager in the audit department. During our last bank audits,
we discovered that an abandoned account belongs to one of our deceased
client, Mr. Park Seoungjae, a billionaire businessman.

Meanwhile, before contacting you, I did a personal investigation. to
locate one of his relatives who knows the account, but I came out
without success. I am writing to request your assistance in
transferring the sum of 10,500,000.00 (ten million five hundred
Thousand dollars) in your account.

I decided to contact you to act as his foreign business partner that
my bank will grant you recognition and will have the fund transfer to
your account. More detailed information will be sent for you.

Therefore, to start processing, I will need the following information from you:
Your full name (as written on your ID card
or passport)
Your full name.........
Your sex ..............
Your age..................
Your country...........
Passport / driving license .......
Marital status (married or single)
Your occupation.......
Your personal mobile number .....


I hope to read from you soon.
Sincerely
 Dr. Rhama David Benson,
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
