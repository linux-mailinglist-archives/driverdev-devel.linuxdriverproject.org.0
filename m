Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D1E234D5B32
	for <lists+driverdev-devel@lfdr.de>; Fri, 11 Mar 2022 07:04:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2246A41938;
	Fri, 11 Mar 2022 06:04:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xjnqlmgQzpY9; Fri, 11 Mar 2022 06:04:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C4A0A41922;
	Fri, 11 Mar 2022 06:04:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6D1FF1BF3ED
 for <devel@linuxdriverproject.org>; Fri, 11 Mar 2022 06:04:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5BDCF8478A
 for <devel@linuxdriverproject.org>; Fri, 11 Mar 2022 06:04:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 32JPKvKsxoDy for <devel@linuxdriverproject.org>;
 Fri, 11 Mar 2022 06:04:47 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-oo1-xc2d.google.com (mail-oo1-xc2d.google.com
 [IPv6:2607:f8b0:4864:20::c2d])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8E5BA84786
 for <devel@driverdev.osuosl.org>; Fri, 11 Mar 2022 06:04:47 +0000 (UTC)
Received: by mail-oo1-xc2d.google.com with SMTP id
 r41-20020a4a966c000000b0031bf85a4124so9582412ooi.0
 for <devel@driverdev.osuosl.org>; Thu, 10 Mar 2022 22:04:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=eLAZs2Xo8+qjKCfzftt2SAVaGqYsHNR7EXcY/vYO3bM=;
 b=YR7JWq6W9aLdZihhjqVTb2Tcxf25ysU4KKv7r/DgLPBHSLHG+KfTMeBzfOBJdCfU9i
 Baux+qjxSsNGzukHhFDfdqZDQIsVXiaqUHafn04+cQXlAwZsK1my7C6EW+ckB2NCs/tK
 XL2tB3b2xKne/rsVsZN4ctlNuIM3u3xAaFO8i9WoMLwf8ej04deuP8rNZZnoOYy1toDW
 biFyp8LHjwDbqL5Nq5R6+FREC91JmRlGbaR4Mdkxu+EQfHSlt0C12Gh7ompB1oP37Pad
 WjhZa2MtvFia7brgsEHNmsvTmrv6ElHjehRDLa1UhNT9oSEa3I/EZ7hlbfZg6OUjOz7D
 AXqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=eLAZs2Xo8+qjKCfzftt2SAVaGqYsHNR7EXcY/vYO3bM=;
 b=zpypKynvDrE64A38R53bP1w6XvDVfmneiocn36aXMbtorFblr8k2aUkqbNfQVUUChc
 4Ss/vecOBPhCNgN9VPyDPg8lITCLk5up3OHPZbMfVCSjI8jOgK8nHoedeVi23i3F7qvn
 zEn++QOLENAt8Opl9cLco78/7uJB182HHJEb4oY3Qknc9lNhx5vvoCG63EhoPQY6lqff
 XpGXIjLv/W8j1lpDkYpp8L8Gx7dtcaVgKLFMg34OkTpC8Kr1BlotVVKotNTGQWrckqxb
 dTexc/yKEQvE/sTniZ11vSIPsSmxYVHCgf5wFdt3INfdXkWjCHXjrkxRItCzisdfR3YU
 710A==
X-Gm-Message-State: AOAM533VIlRFsEWdRvXNUxlsK04mUkV89MqkaoPMRqr9ilPEqIY8ph8i
 r8LMODu7G9s2lsXI/NLYovgIMDBaIerD7MsOibI=
X-Google-Smtp-Source: ABdhPJywEV8s3I3u4cDiyACkt3CF5Wr/RV6Y4PAVUbAMnFICIEAp//KyZFv1z5UY8sEZ/QTzrT1UqIcO7MOf2svSX2Y=
X-Received: by 2002:a05:6870:ec90:b0:d9:a809:ee51 with SMTP id
 eo16-20020a056870ec9000b000d9a809ee51mr10550400oab.139.1646978686557; Thu, 10
 Mar 2022 22:04:46 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a9d:76cc:0:0:0:0:0 with HTTP; Thu, 10 Mar 2022 22:04:46
 -0800 (PST)
From: Ambrose Cooker <mrs.chichimohamed01@gmail.com>
Date: Thu, 10 Mar 2022 22:04:46 -0800
Message-ID: <CAKWaEgJB4DwK8kUpEd8_OsgWMuu95ky1MqRPowFQhfPRENe9Cg@mail.gmail.com>
Subject: Greetings to you my Dear!
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
Reply-To: ambrosecooker389@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Greetings My Dear Friend,

On behalf of friendship and love i need your urgent assistance in
transferring the sum of $10.5million immediately to your private
account. The money has been here in our Bank lying dormant for years
now without anybody coming for the claim of it.

I also need you to corporate with me for the release of this money
into your private bank account as the relative to our deceased
customer (the account owner) who died on 2016 terrorist attack at
Splendid Hotel Ouagadougou Burkina Faso,with her Wife.and i really
need you to stand as the NEXT OF KIN to this family.that is why i
contacted you and as soon as this money is been channel to your
account i will come over to meet you in  your country for the share of
the money and remember The money will be shared 60% for me and 40% for
you.

Check out the web; (https://www.bbc.com/news/world-africa-35332792)
for more understanding, I shall send you more information and the bank
details when I receive your positive response from you to follow
up,therefore contact me with my private email.

ambrosecooker389@gmail.com

I will be monitoring the whole situation here in this bank until you
confirm the money in your bank account and ask me to come down to your
country. Please keep this proposal as a top secret as I am still in
service in the bank and intend to retire immediately the fund is
transferred into your bank account. By indicating your interest, get
back to me with the below information.

Full name:
country:
Address:
Occupation:
age:
Mobile phone number:

Upon receipt of the above mentioned information, I will send to you a
letter of application which you will fill and send to the Head
Administrative Department of our Bank, for easy execution of the
transaction

I stand to assure you that there is no problem in this transaction for
it is 100% legal and risk free


Thanks with my best regards.
Mr. Ambrose Cooker
Telex Manager
African Development Bank (ADB)
Burkina Faso
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
