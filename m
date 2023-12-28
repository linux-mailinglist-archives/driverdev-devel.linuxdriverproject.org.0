Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EB3581F64E
	for <lists+driverdev-devel@lfdr.de>; Thu, 28 Dec 2023 10:33:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 73AC960BBE;
	Thu, 28 Dec 2023 09:33:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 73AC960BBE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jZAYDpFO3fwE; Thu, 28 Dec 2023 09:33:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4E5BF610B4;
	Thu, 28 Dec 2023 09:33:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4E5BF610B4
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 466CC1BF990
 for <devel@linuxdriverproject.org>; Thu, 28 Dec 2023 09:33:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2CB20405A2
 for <devel@linuxdriverproject.org>; Thu, 28 Dec 2023 09:33:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2CB20405A2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rydu3jG6TKIL for <devel@linuxdriverproject.org>;
 Thu, 28 Dec 2023 09:33:00 +0000 (UTC)
Received: from mail-ua1-x941.google.com (mail-ua1-x941.google.com
 [IPv6:2607:f8b0:4864:20::941])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D98674015A
 for <devel@linuxdriverproject.org>; Thu, 28 Dec 2023 09:32:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D98674015A
Received: by mail-ua1-x941.google.com with SMTP id
 a1e0cc1a2514c-7cbf6ce782dso1505758241.0
 for <devel@linuxdriverproject.org>; Thu, 28 Dec 2023 01:32:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1703755978; x=1704360778;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=6wpRmhPzZYewxgNPeLpQCxgoFM946UyixDuR+kE4Hhc=;
 b=SEKUpMR/aPJd7KFLs9vyA8mdlYQnC/PUE8yfp6x9q7LLx1NFYPKRto+4rwDPMFuULv
 en1LyBufmOOY8JSV8zsQl/mUn5jwC0212QCRLk0BsM65yBBYE1kq99Ubfmvfsclq6JGE
 o6KVcRUB51nzOxxOTS6IGzwQduuLzTtEmigVeiRuIl8a2gXyuL6yQyg87jFlI/feJilD
 /98FlPU/5UQFMEXMj4n0rYXYnekPZEJqLKsR3ztaNn3uHcv5KNwXcyebhFPheEGcuEZ0
 t3dJJUGzVDCqm7JutTK2gsjuoTkwtXBKzBkgUbYMkDkwxSv1NwsIpJPewhds52tPc5tT
 e8Ag==
X-Gm-Message-State: AOJu0YxeUjNMnVp96/jjd1rRReX+2XdKok0MPPeq0/LDmImD1A4CcsbH
 In7dn1eiU1iTyyTCj60ujyhhM1CM28IJbEpC4TE=
X-Google-Smtp-Source: AGHT+IEAUIR4QERvM4GXWvgIWbvacHt3unQAmb/HjHvUP6RiBoIYKG3DGwbgNqKKXcDbxE7/ieo7I6B4EQFDb9wDE4Y=
X-Received: by 2002:a05:6102:418a:b0:467:432:4edc with SMTP id
 cd10-20020a056102418a00b0046704324edcmr2853665vsb.31.1703755978047; Thu, 28
 Dec 2023 01:32:58 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a59:9ece:0:b0:43d:f766:c866 with HTTP; Thu, 28 Dec 2023
 01:32:57 -0800 (PST)
From: CITIBANK <awarymrchristopher8@gmail.com>
Date: Thu, 28 Dec 2023 10:32:57 +0100
Message-ID: <CAAMtbagzFBHZEq=CA6Ze-xGyuSnsPE89B-XDi543_YG7az5m-A@mail.gmail.com>
Subject: WELCOME TO CITIBANK OF AMERICA.
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1703755978; x=1704360778;
 darn=linuxdriverproject.org; 
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
 :subject:date:message-id:reply-to;
 bh=6wpRmhPzZYewxgNPeLpQCxgoFM946UyixDuR+kE4Hhc=;
 b=BXkemK1AxFIC7W/AMAAHB9WWI0igd2qFtAc4G3RfUqU+R4oOR0zLrUZdUoODfi/9Gm
 WvzwDLy/hB0tyQ6gk3FBSC/9J3pCPsPRotBzGUi9WxtQ4AcIl3LC0+Gjd90w5zhQT9it
 p4BDZyP8M4rdixY2TNVrBCmK1SNIubq2rVEmGvcfSv+Eo8mQYk9g7hpJ6qWepozrnGkT
 oIiPRJO/00X2oc59wq8DH0Dtzq5wbsn5dwMsxIudSKhKQE2T/0w06zctjcrrTDntqMjn
 YuOf700lzhog1ceG8OGAnRkBkzuNmI3CcPG1xle14JjOKfme1ls3p4CPCjBgTsPQH2Ob
 G6YA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=BXkemK1A
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
Reply-To: citibankofamerican8168@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

WELCOME TO CITIBANK OF AMERICA.

1 Pirat St NE, Washington, DC
20543, United States of America

TO YOUR ATTENTION!

This is to inform you that a compensation payment in the amount of
US$20,800,000.00 (Twenty Million Eight Hundred United State Dollars)
was legally approved
and deposited few days ago with our Bank, Citi Bank, and it was
deposited in your name by the
foreign debts settlement/compensation committee. and they instructed
us to credit this fund direct to your
private bank account with immediate effect,

However, Please note that Citi Bank have decided and agreed together to
send this payment to you by either
(1). Bank Wire Transfer,
(2). Cash delivery or by
(3). ATM means.
Depending the option you would prefer to receive this
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
