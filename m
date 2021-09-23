Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 13914416770
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 Sep 2021 23:25:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 086EF840BA;
	Thu, 23 Sep 2021 21:25:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RMD7MJZCdBWf; Thu, 23 Sep 2021 21:25:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 68DD5840A4;
	Thu, 23 Sep 2021 21:25:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 300691BF317
 for <devel@linuxdriverproject.org>; Thu, 23 Sep 2021 21:25:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1D88F840BA
 for <devel@linuxdriverproject.org>; Thu, 23 Sep 2021 21:25:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lCc5F2U8hpB5 for <devel@linuxdriverproject.org>;
 Thu, 23 Sep 2021 21:25:25 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qt1-x82b.google.com (mail-qt1-x82b.google.com
 [IPv6:2607:f8b0:4864:20::82b])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8855383F08
 for <devel@driverdev.osuosl.org>; Thu, 23 Sep 2021 21:25:25 +0000 (UTC)
Received: by mail-qt1-x82b.google.com with SMTP id 2so7625417qtw.1
 for <devel@driverdev.osuosl.org>; Thu, 23 Sep 2021 14:25:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=XOycsyS8WRs8WZM/52QyGEA5jLYLxAJ/W6Zuel7qkRA=;
 b=ip4NCZ3OBXjyoxtUaFdjPWaoiTJkcY62i0boFj1PaV2IQwQlg0Fp0M2CbHHVBbBOkC
 sfQDU4tPiCejplHUsZheNMXOAmexTpVkahW5xkqoZnHxSTx9beLR5MtW6tV/x1PptD1P
 b8mEzL7PdRMRB/aa3NUsw1OLoTnD361sDZ5yJs7nQDBO+iorLiZ9aYezKG9m/zHZkhwW
 PmDH1/KL+Un1ax7Gsne9by90KONe/PutbsPmoDHHDmfIYoJfkbVbtMRgsmPupElwFjm/
 hh/9uuOgJRKE6zSSgjL8Q11TzaeGmVwq0QPMN+AEOQ2mSl8b6WN8Ei1SEG4IE07BiyO9
 oRYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=XOycsyS8WRs8WZM/52QyGEA5jLYLxAJ/W6Zuel7qkRA=;
 b=7aOwNXL1F0lAZouOtmlhykpgtE9o4k0mcI7lLDuEI0HcZ7tiPw1TU5JJTRWmzeIg4q
 XaLvsHiZpUtsTawQ0o4T0YElTptcLRkOdHCudCW7h/l1H5Nrg8uGZHQVUNuoIOhxP7St
 fIdol3vwOpz1PSN0DJFsGMS8myFJaIv//67yvAUTQLjCiasxImFh1+EAPJfXbsOEOvpF
 ix/24MV5Ft8rQamlmbqesnDiIzVvMnUtxVn7xTyi+TNQLMDKSIZsDeW5c0Zc/ixDS4C7
 E/9gTPBUsoaIGs8Gkr69mXjBxviWbtgke2QsgfAFmvUdfM1SanrUIMcID5ukFJaAWIup
 K7pA==
X-Gm-Message-State: AOAM531/AhGWBOuZkF0YW+SG9LGLdycZXuL03GLmNIEVDr2hL0d3WtKu
 bUhgziIkDkXSEOjk8lEqWqXvcz7OyoITKqLs9YY=
X-Google-Smtp-Source: ABdhPJw9b1X/vvpplqOjEZIaff6U84eIynHFjc8OgK0fL+eK9JRs8kzQo2eKdXLki2owkecJzRrc5qR9oP5G8dzBwXs=
X-Received: by 2002:ac8:138c:: with SMTP id h12mr828108qtj.357.1632432324289; 
 Thu, 23 Sep 2021 14:25:24 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6214:2ce:0:0:0:0 with HTTP; Thu, 23 Sep 2021 14:25:23
 -0700 (PDT)
From: Aisha Gaddafi <mrzakirhossain4444@gmail.com>
Date: Thu, 23 Sep 2021 14:25:23 -0700
Message-ID: <CAJGJQubiDQiVPH1berJLDCFA2MDf18+5b9T-4wnqN8YMS+tCMQ@mail.gmail.com>
Subject: Dearest Friend,?
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
Reply-To: ayishagddafio@mail.ru
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dearest Friend,

In the name of God, Most Gracious, Most Merciful.

Peace be upon you and mercy be upon you and blessings be upon you.
I have the sum of $27.5 million USD for investment, I am interested in
you for investment project assistance in your country. My name is
Aisha  Gaddafi and presently living in Oman, I am a Widow and single
Mother with three Children, the only biological Daughter of late
Libyan President (Late Colonel Muammar Gaddafi) and presently I am
under political asylum protection by the Omani Government.

Kindly reply urgently for more details.

my email address below: ayishagddafio@mail.ru
Thanks
Yours Truly Aisha
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
