Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 09CE27072B8
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 May 2023 22:07:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4748D840D7;
	Wed, 17 May 2023 20:07:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4748D840D7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3_vR9H4gZWc9; Wed, 17 May 2023 20:07:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1451382125;
	Wed, 17 May 2023 20:07:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1451382125
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3C6FD1BF47D
 for <devel@linuxdriverproject.org>; Wed, 17 May 2023 20:07:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 13EE24191A
 for <devel@linuxdriverproject.org>; Wed, 17 May 2023 20:07:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 13EE24191A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rsBCIigoyYud for <devel@linuxdriverproject.org>;
 Wed, 17 May 2023 20:07:32 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5185441916
Received: from mail-vs1-xe44.google.com (mail-vs1-xe44.google.com
 [IPv6:2607:f8b0:4864:20::e44])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5185441916
 for <devel@linuxdriverproject.org>; Wed, 17 May 2023 20:07:32 +0000 (UTC)
Received: by mail-vs1-xe44.google.com with SMTP id
 ada2fe7eead31-43476bbec67so710038137.2
 for <devel@linuxdriverproject.org>; Wed, 17 May 2023 13:07:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1684354051; x=1686946051;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=NWoHcqRF+8HchD82wrNvx4+K/3zxtMcjuwRJdebecGE=;
 b=KOvuCNGP2qK50vrSz66gLZgzkigUl9To9jgVdfLznrG7uGrEvmEZkSxaNYYZDj+nar
 Fe3N0l2nIO4ExwmoCYE+9PmX/3cpKVRi2nmHHPdD2cULuaMk+cirYZaVt4U66VQUeEbG
 mtt/HJfqmkIP4UgS10TK2t7ZvRmc5Cu+v1syi/AVpTvPq+0bEHZ6w+rx+tOCnNS+YXLP
 j29t23Tghde1qYqh3YlQzsr6wVeJEsuWBBaD7xl+IexA/9BzEznjQl4LtkZWbEUo47oH
 Anh7ey677vN1IARJloKswuDy5Bn8gSTZilTajEugzCdhEJ5OZR7y6LrQk/2Tkev3gK9J
 w8KQ==
X-Gm-Message-State: AC+VfDyik61JClgeqyhesSgdbrnYRs56WMtK8O8RpLdOicZTqhcvAkpR
 kpbIl0KZdoYl2Tnm0d6+qD8/WG2kGNIC7WoeOwg=
X-Google-Smtp-Source: ACHHUZ6wR5+lF5RgRFOJfCUh0DbEYTzjh9iUYuDtcbHbndU7+zwmX6nqZ36rEcEu7bnL368MimEaVkLIuQby/yOpKD8=
X-Received: by 2002:a67:e256:0:b0:436:37f0:1c8f with SMTP id
 w22-20020a67e256000000b0043637f01c8fmr9071070vse.2.1684354051078; Wed, 17 May
 2023 13:07:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a59:c1a5:0:b0:3d6:9ddb:34a6 with HTTP; Wed, 17 May 2023
 13:07:30 -0700 (PDT)
From: Mary <maryjosen038@gmail.com>
Date: Wed, 17 May 2023 20:07:30 +0000
Message-ID: <CAKgcP+rtc5SUiyU+YtiGr1sSg9tmPQkPOkWLao15v64MF72nzg@mail.gmail.com>
Subject: HELLO
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1684354051; x=1686946051;
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
 :subject:date:message-id:reply-to;
 bh=NWoHcqRF+8HchD82wrNvx4+K/3zxtMcjuwRJdebecGE=;
 b=JW43tpt52UPK8gyE57jfhkSg0v7R7FpqufFnwai6yg7TAc11wJnDO428lbuGE5O4jy
 cbRDKHEKqgf8ZaLxaV6ZCc0g2ZTfGSWVPW8Wjaje/ZJjjmtuBQ98VU4q2DFp6y2Ne/1Q
 GitUyNs/GJXNaW0+PRMhGDTr9JOUq4xGbXdbkP5lA81QnG000hkwIewjVsjzfhyCjBBW
 EULrPSD/NgRMuKq5b2EvDN9NPq9ZQPivOpLtThRwUFfjrqjHiU7F2yGJut+kPK9C5JU2
 i8iW6AideEsKuWPI7blBOj80RjU4aM5ceMgsYrgnRZPv7pwYqogr2/hTfzHrP6ry9c5T
 CBBg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=JW43tpt5
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
Reply-To: maryjosen62@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

 How are you doing and your family.

I'm Mrs., Mary josen. I have a fund of 4,500,000.00 EURO that I
inherited from my late husband that I want to donate through you for
orphanage and charity project, but I have been suffering from cancer
illness for so long now which I have been admitted in a hospital for
treatment. My fear now is what the doctor informed me, after series of
tests on me that I may not live long because of the sickness and I'm
afraid of losing this fund to the wicked government because they don't
care about the poor ones in the society.

I will appreciate your honesty and courage to handle this fund to help
the orphans, widows and the charity home.
As soon as I receive your message regarding your interest in this fund
to help the charity home and the less privileges, I will give you more
details
about this fund.

May Almighty God bless you while I'm waiting for your answer.
Your sister.

Mrs, Mary josen
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
