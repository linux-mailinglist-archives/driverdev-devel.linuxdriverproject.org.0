Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 63532418817
	for <lists+driverdev-devel@lfdr.de>; Sun, 26 Sep 2021 12:24:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A998C403B5;
	Sun, 26 Sep 2021 10:24:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hykb3wptgyIL; Sun, 26 Sep 2021 10:24:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 13D854028E;
	Sun, 26 Sep 2021 10:24:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B29441BF48C
 for <devel@linuxdriverproject.org>; Sun, 26 Sep 2021 10:24:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AF2AF4028E
 for <devel@linuxdriverproject.org>; Sun, 26 Sep 2021 10:24:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jfKe6T2CoMlx for <devel@linuxdriverproject.org>;
 Sun, 26 Sep 2021 10:24:06 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com
 [IPv6:2a00:1450:4864:20::543])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 05B8740284
 for <devel@driverdev.osuosl.org>; Sun, 26 Sep 2021 10:24:05 +0000 (UTC)
Received: by mail-ed1-x543.google.com with SMTP id bx4so56009414edb.4
 for <devel@driverdev.osuosl.org>; Sun, 26 Sep 2021 03:24:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:sender:from:date:message-id:subject:to;
 bh=Qdp0SHs3xmfRjgLIyqNwEa9EGz3sQom2u8TOqtBT/Zc=;
 b=AZ98xo9kQAkhjANdTIDtYXX7Ayr/IxZMc6qVbEXxVQEgpvRQXpX8TGuPobd325zFlf
 MiG+fyI7BHyj1x8SgRukb1fNAsjpCgOLqv+ocHw36yS9/acBcpuxrOxKjunm13oldYuO
 3BndWz7JH3NoZ6Ntizd4utxOjfWUtk6VDZHpFybSrM2ty14F0b3FozmTXkyB8Ps7KoqE
 KqxNcjAiHHRZ9kKTquoIzwGjL1FHlukfNUCiwpThxV68LlfR9UtbiH/oq3kAyVaQfZGO
 jKUUkGihMGEJX7Yv8iTQh6PF/NVIr3LHzQta4MLWDQi8tmdrBSoI/o7ZYp4OMcB1QqLA
 EqPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
 :to; bh=Qdp0SHs3xmfRjgLIyqNwEa9EGz3sQom2u8TOqtBT/Zc=;
 b=q9Uzt46wHKGeOlykpjH74XLOKBKiviCwiAgBA4Km4eWH3FCwBrwIbkEU/MI3c2syu6
 HAFmKgGSIL1+tq9sExyyfpg6v7iEZCFgJrqYpKs3CRvnmayuN1nsmJr9J7wd8X4YuBJ8
 MyFXvMwbLT41cU11W7/ZnNu/H3UXAoljso8FSZlUnyVjmS9T321jywbOc5E+OXpg/OZ4
 pUS1iTBHbi+7qb4Obl4jkl9O8I8/SPJcfP2llEjP8uM+VwbI54rATS5n57pojr+3kxF/
 Vmp/DlPGg/WNiWSzyX8HO8uu20/Yv194v781oLschbe/dzYnW5AynSVL9vAsPdqdV9fb
 Fr3A==
X-Gm-Message-State: AOAM5306to3CAz/RsgsUmNGMJgznBDv54NH9U03KHIONP5OkU1ii4yYI
 tApm+U0bfnjn8G5zTr/Tqw+mMdwkq44eRJghMco=
X-Google-Smtp-Source: ABdhPJwYL13Coq3lY0CDsAdCUG8loW71fwqSsh+yR1L9/RySFWEw76GtDUiM+9k2EQgdvU+lGmlltXNsi1sMxW61R9s=
X-Received: by 2002:a17:906:b59:: with SMTP id
 v25mr20600439ejg.547.1632651843885; 
 Sun, 26 Sep 2021 03:24:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a17:907:1c1c:0:0:0:0 with HTTP; Sun, 26 Sep 2021 03:24:03
 -0700 (PDT)
From: "Mrs.Nicole  Marois" <nicole1563marois@gmail.com>
Date: Sun, 26 Sep 2021 10:24:03 +0000
X-Google-Sender-Auth: U9O88uYOZuCYBnDMARoSj66hFrY
Message-ID: <CANiD9SKGCu+qY7QbDxKin6mHaYoiwc2CVuf3eU0vgegS-JYApQ@mail.gmail.com>
Subject: Hello Dear,
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

Hello Dear,

Please do not feel disturbed for contacting you, based on the critical
condition I find mine self though, it's not financial problem, but my
health you might have know that cancer is not what to talk home about,
I am married to Mr.Duclos Marois who worked with Tunisia embassy in
Burkina Faso for nine years before he died in the year 2012.We were
married for eleven years without a child. He died after a brief
illness that lasted for five days.

Since his death I decided not to remarry, When my late husband was
alive he deposited the sum of US$ 9.2m (Nine million two hundred
thousand dollars) in a bank in Burkina Faso, Presently this money is
still in bank. And My Doctor told me that I don't have much time to
live because of the cancer problem, Having known my condition I
decided to hand you over this fond to take care of the less-privileged
people, you will utilize this money the way I am going to instruct
herein. I want you to take 30 Percent of the total money for your
personal use While 70% of the money will go to charity" people and
helping the orphanage.

I don't want my husband's efforts to be used by the Government. I grew
up as an Orphan and I don't have anybody as my family member,

Regards,

Mrs.Nicole Marois.
written from Hospital.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
