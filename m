Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BAFB471041
	for <lists+driverdev-devel@lfdr.de>; Sat, 11 Dec 2021 03:02:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 95738421F7;
	Sat, 11 Dec 2021 02:02:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LLDr6D0ummz1; Sat, 11 Dec 2021 02:02:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7CB0F421FF;
	Sat, 11 Dec 2021 02:02:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 398741BF9D1
 for <devel@linuxdriverproject.org>; Sat, 11 Dec 2021 02:02:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2713F421FF
 for <devel@linuxdriverproject.org>; Sat, 11 Dec 2021 02:02:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aaAtVwQozycR for <devel@linuxdriverproject.org>;
 Sat, 11 Dec 2021 02:02:05 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com
 [IPv6:2a00:1450:4864:20::242])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 576F3421D8
 for <devel@linuxdriverproject.org>; Sat, 11 Dec 2021 02:02:05 +0000 (UTC)
Received: by mail-lj1-x242.google.com with SMTP id z8so16138165ljz.9
 for <devel@linuxdriverproject.org>; Fri, 10 Dec 2021 18:02:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=UB8HPXfiFrSS8lJHVD9imqT8IM8lXgQeVTQMVTTdoew=;
 b=YLFlW2EU3wC14KpVTk+IM58oSghSYLjMmVu6zQ/IYCwgsR5Sf12xJCL/5+CVpbXsnt
 22KfNqT06o98mhCtfoOfWNh/4tfFmj2AFDjLdssqJs8+fwuuzWeqstsrP9Eqc87OlMHn
 TvZYh66KNDgDYMOMzV+7fqlsVNnsPbs5tbKal0uE5CTp2Rk7sipJ65nnPaJWW6urjiYG
 yjhaQr0+DsLsyIMnaiNd6rjtUc7yQgIo65YEuBLpX5cuMOVjNiZW8dTCMF1ZcQmI8lLg
 ts2zRNIssQ7WVu8YEQseHp9elEHPuA+qDafMGck3ipNTcw1LcoccQXJFJcltFVTtty4m
 33gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=UB8HPXfiFrSS8lJHVD9imqT8IM8lXgQeVTQMVTTdoew=;
 b=augsm2AE7PB2IcUJTtQBnKOU+GumgBLkUca8msfrOvC8qh66L/Zez1eH3DwG37UoG7
 WMwrOq6FM4F9dl+jkSqbDdJqeis0TQbfz7XE3l9aJ4ff7jgkLQsEjGezO4nRRW2NYT4+
 wOqzR3k4hCl46CbmGUi9WuTFehg+rsD4jsKKx3FHeiyVVrGC/7SFkZTrFK+mKKRtROvs
 /VSiglOdpAd//0JnOW7nFBVMwg847ohQhwIF995N7+M8fyZ7U+NXIRC5vYhWeH49Nd25
 WtPnzH/83qqjJ5z6WkoElGvmXxp9PWi0XcQY0BWQWX+Y7sCPJc1IwuQFyCvScqVDLOJT
 FjOg==
X-Gm-Message-State: AOAM531ImWrRSIH5+YcAXOjK4TtQzHE1sc54RDcWyx49a485MBKa1eeJ
 UV/jGc/SuCp9L31+8TyBv4gbFmIQm9yCHov3wd8=
X-Google-Smtp-Source: ABdhPJxBVYZ26kuukI+qghu2oEbePULLlY8UzOvy8Thh2XI49DVZF++TlN5eyoWkvajWnohXM36KonRfGTJC1IRe82w=
X-Received: by 2002:a2e:9d8f:: with SMTP id c15mr17452679ljj.477.1639188123220; 
 Fri, 10 Dec 2021 18:02:03 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6512:12c7:0:0:0:0 with HTTP; Fri, 10 Dec 2021 18:02:02
 -0800 (PST)
From: International Monetary fund <abubakarsadiq1297@gmail.com>
Date: Fri, 10 Dec 2021 18:02:02 -0800
Message-ID: <CAHXNoSg3Z7iK4ieUWhau28hUaL637ztb2vgqOT3oZCxEMRC3RQ@mail.gmail.com>
Subject: Dear Beneficiary,
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
Reply-To: internationallmonetary695@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
 I.M.F Head Office
#1900 Pennsylvania Ave NW,
Washington, DC 20431
INTERNATIONAL MONETARY FUND.
REF:-XVGNN82010
internationallmonetary695@gmail.com
Telephone : +12062785473

This message is from International Monetary fund (IMF) I am Mr Bo Li
deputy to  Kristalina Georgieva the current president of International
  Monetary fund (IMF) We are aware of the stress you have been passing
through and how you have lost your money trying to claim your fund ,
you have to worry no more for the international monetary fund is fully
 in-charge of your fund now, contact  me for more info on how you will
receive your fund( internationallmonetary695@gmail.com) or call me
on-Telephone : +12062785473 for more info.

Regards,
Mr Bo Li
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
