Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 63C9A4A9500
	for <lists+driverdev-devel@lfdr.de>; Fri,  4 Feb 2022 09:20:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7468160B2B;
	Fri,  4 Feb 2022 08:20:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wP4Qzn_0RdAr; Fri,  4 Feb 2022 08:20:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 234A660B05;
	Fri,  4 Feb 2022 08:20:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8B3891BF331
 for <devel@linuxdriverproject.org>; Fri,  4 Feb 2022 08:20:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 72B5A60B2B
 for <devel@linuxdriverproject.org>; Fri,  4 Feb 2022 08:20:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SqtXgP3uKdW3 for <devel@linuxdriverproject.org>;
 Fri,  4 Feb 2022 08:20:35 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x643.google.com (mail-ej1-x643.google.com
 [IPv6:2a00:1450:4864:20::643])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A6A4A60B05
 for <devel@driverdev.osuosl.org>; Fri,  4 Feb 2022 08:20:34 +0000 (UTC)
Received: by mail-ej1-x643.google.com with SMTP id m4so17019904ejb.9
 for <devel@driverdev.osuosl.org>; Fri, 04 Feb 2022 00:20:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:sender:from:date:message-id:subject:to;
 bh=c5+oKL89+Al8opwNLgJ+ACvlbdVu/5l2SU8tvvvRvuM=;
 b=fj1mt/B3OVd6EimCHFMcScDBYF0nAZvu+34ddFYXRWihn+gvmGPfZzOsHu/mPbPdGc
 icZk4KtG0WLypw4GxKJUl1t/jeb3zcv5zoziSrX3WiBxBstIOEMBk+2VbAmzdek4N8E2
 q/L4r/dU/KAU0asDq87kjwBAIabGW+bTQW9i6fqJIPxaYzfgWay/ZVNvQker6zOJdXDz
 HPmModOrO3rsFC11EMtftEV8hnAE773eeYdslKZ+NhjG/WmzrbAFk0IHUKI7uElDfTmJ
 UuVScZ73gNNdBMclSmJyA73vvW2mQTis/S3KKBWYNpbwU5sXCs818TsbWIdKyQyjOQL2
 MZHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
 :to; bh=c5+oKL89+Al8opwNLgJ+ACvlbdVu/5l2SU8tvvvRvuM=;
 b=THUSJ3sqmocU9LEG9YBYn56GOcHY4TgUf1jiDSerqizj1bh7ae9UH62znzCXmGkviz
 /N/RVmEsRVzXnmpyEcHefhfKsm5aH2oW2jheSc9CZmJC0jolyT6pKIRNiHMKR7gK0IyI
 RVkfb5XTqVNmS90ubMyqowplZO+Q98MIoI7S6XMwp+SR/4KE/qmtb4qffofRGDGpQAUh
 p77xD6iJffMwg8bCRO12zC8ddPoEJt1R/D9yKGXtJi/O1jgeg5Pbt+zt7gClfyKGaAm+
 NNN6QColdpwoelez5ExHQ3ZoSUObcBFSXB36YqgsZ9d9QZnm1SV45x5afmulsi8zM3jw
 DNlA==
X-Gm-Message-State: AOAM533U+IirUNDrg38L/wfre2Otll9bJ2oNQhv20ZSOj+cwKXOuoqXz
 rYRQ65WY8RH+9NeSw1QhDbNnc6suU1LtcTw2QI4=
X-Google-Smtp-Source: ABdhPJysC7HfYTyXPQw2psoxf06AhJ7xWzmejjemGgd3YBT9vPoE+v0pw5Ghr2SN1mhFgmLL42A91QiDE2Dol1w0cpU=
X-Received: by 2002:a17:907:868a:: with SMTP id
 qa10mr1507515ejc.688.1643962832549; 
 Fri, 04 Feb 2022 00:20:32 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ab4:a72a:0:0:0:0:0 with HTTP;
 Fri, 4 Feb 2022 00:20:32 -0800 (PST)
From: komi zongo <komizongo2020@gmail.com>
Date: Fri, 4 Feb 2022 08:20:32 +0000
X-Google-Sender-Auth: vsgd4mEQIeNYWwZnnHMJACrBxkQ
Message-ID: <CAATaS8RxSvvnSqHuEYCmaQj-Wzo1P_rpjHO-AmSXwaT1pJdHAQ@mail.gmail.com>
Subject: Very Very Urgent.
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

I NEED TRUST.

Hope you are in good health with your family.

I am Mr.Komi Zongo.  I work as the Foreign Operations Manager with
one of the international banks here in Burkina Faso. Although the
world is a very small place and hard place to meet people because you
don't know who to trust or believe, as I have developed trust in you
after my fasting and praying,  I made up my mind to confide this
confidential business suggestion to you.

There is an overdue unclaimed sum of Ten Million Five Hundred Thousand
United States Dollars ($10,500,000.00) in my bank, belonging to one of
our dead foreign customers. There were no beneficiaries stated
concerning these funds. Therefore, your request as a foreigner is
necessary to apply for the claim and release of the fund smoothly into
your reliable bank account  as the Foreign Business Partner to the
deceased.

On the transfer of this fund in your account, you will take 40% as
your share from the total fund, 5% will be shared to Charitable
Organizations while Motherless Babies homes, disabled helpless as the
balance of 55% will be for me. If you are really sure of your
integrity, trustworthy, and confidentiality, reply urgently and to
prove that, include your particulars as follows.

Please get back to me through this Email Address komizongo2020@gmail.com

please fill in your personal information as indicated below and as
soon as i receive this information below i will forward you a text of an
application which you will fill and send to the bank for the claim of the
fund as i will direct you on what to do.

Your name in full.......................... ........
Your country....................... ..................
Your age........................... ....................
Your cell phone......................... ...........
Your occupation.................... ...............
Your sex........................... ....................
Your marital status........................ .......
Your id card or passport...........................

Best Regards,

Mr.Komi Zongo.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
