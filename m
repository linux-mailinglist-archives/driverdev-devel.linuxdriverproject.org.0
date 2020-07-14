Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B4CD521EB28
	for <lists+driverdev-devel@lfdr.de>; Tue, 14 Jul 2020 10:19:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2D7DC891B4;
	Tue, 14 Jul 2020 08:19:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 46zFDWvM1IFx; Tue, 14 Jul 2020 08:19:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0359F8915B;
	Tue, 14 Jul 2020 08:19:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9E0A01BF297
 for <devel@linuxdriverproject.org>; Tue, 14 Jul 2020 08:19:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 119CB89ADB
 for <devel@linuxdriverproject.org>; Tue, 14 Jul 2020 08:19:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id N3TB8ktqP+MB for <devel@linuxdriverproject.org>;
 Tue, 14 Jul 2020 08:19:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f65.google.com (mail-ej1-f65.google.com
 [209.85.218.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4FBC588C70
 for <devel@driverdev.osuosl.org>; Tue, 14 Jul 2020 08:19:29 +0000 (UTC)
Received: by mail-ej1-f65.google.com with SMTP id p20so20581892ejd.13
 for <devel@driverdev.osuosl.org>; Tue, 14 Jul 2020 01:19:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=YqljJR74+Mn7SppABFl/S/+hKBpdw+21MScTQOdBTOE=;
 b=SS+Q+IT40HNTx3lm/Aq3b5zJqKhxQTLpRUODlQCDmaQMi9x4QF2gnWpgJ1TvM1+mqN
 g74Jnw0WHiVUHyj6bwN91RGuv+ysCSlb3p3vPi359ElpsH9+IdCLeHw76V2JtFYqsX8n
 661SADvUTvZg+TDqBt+qNYdGJ01G71dAcpgBTOY8mQVIh9PBbPMUEyM1hsWkqeTHwuIH
 +rtsZvK9tRsHbaU4IDjtCI/nK8/mN/YZ7Wry6uW0jIlGrLavC+1miRpzpPCXClTcLgBp
 NAu+MQOvQ8bCVQxmaSwP0B4WCBQJB68oWGd3ijsGL4WmJY9/YKb+uUVbBOTyZ1S9J7f0
 KcnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=YqljJR74+Mn7SppABFl/S/+hKBpdw+21MScTQOdBTOE=;
 b=qhKb7Evjqs32xpoWi1WJduxWE6VAY+6Nb89h0F0Z4SvxeRVWAeuJwoNxl/6UHnZNoh
 kbDG3uUq7a4FtwHv+2UoMSDsNUbZMwVWTBq9G0S9FUC1JbMbbIORp+Q1oeugABPbDPC+
 6hZNC5LP5YiUtUlfFUiCTpLa4RxAv8sBzQutjWxluXj5Sx+IcQJIA4p1joMkbsejqKzX
 qWb3zxA51gqoL1lgw8I+Z2uKX//klzGlYucyvPJlPNgiFMAXXTFfCpS+EEXkoKsdKNaa
 rlR97FLEbe2kU1RJEy3WC5TCZ9hmbQUwpctzBVl0iifSkpyqVX9qQGbBlpfqLqHkywGl
 OTgw==
X-Gm-Message-State: AOAM531TdwNCf3hZAl1hYUqFBB23cZOT3n74cM8epkUOe67n6M/vaadN
 UMDM+1wjHTnVOOUxKfVC1ku/Cm/xiBZH1EZn/Ms=
X-Google-Smtp-Source: ABdhPJz/8wIG8YRUapqQVv6VdN6rhimUizz1FWjOAg7Zh6U3p2qW9EIwIGYenP/3bztpoMphvljHkwa/VW6+Qw1cbnI=
X-Received: by 2002:a17:906:40d7:: with SMTP id
 a23mr3314380ejk.421.1594714767562; 
 Tue, 14 Jul 2020 01:19:27 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:aa7:c6c1:0:0:0:0:0 with HTTP; Tue, 14 Jul 2020 01:19:27
 -0700 (PDT)
From: Mrs Nicole Marois Benoite <mrsnicolefrance1958@gmail.com>
Date: Tue, 14 Jul 2020 01:19:27 -0700
Message-ID: <CAJKBOP=0R4sP0nTQOJz56UE-TfbHOJKudQCaZzbng+xq8OtNXA@mail.gmail.com>
Subject: 
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
Reply-To: mrsnicole.france1958@outlook.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dear Beloved

I am Mrs Nicole Benoite Marois and i have been suffering from ovarian
cancer disease and the doctor says that i have just few days to leave.
I am from (Paris) France but based in Africa Burkina Faso since eight
years ago as a business woman dealing with gold exportation.

Now that i am about to end the race like this, without any family
members and no child. I have $3 Million US DOLLARS in Africa
Development Bank (ADB) Burkina Faso which i instructed the bank to remit and
give to Orphanage & Teaching Volunteer Work in Burkina Faso.But my
mind is not at
rest because i am writing this letter now through the help of my
computer beside my sick bed.

I also have $4.5 Million US Dollars at Eco-Bank here in Burkina Faso
and i instructed the bank to transfer the fund to you as foreigner
that will apply to the bank after i have gone, that they should
release the fund to him/her,but you will assure me that you will take
50% of the fund and give 50% to the orphanages home in your country
for my heart to rest.

Respond to me immediately via my private email address
(mrsnicole.france1958@outlook.com) for further details since I have just
few days to end my life due to the ovarian cancer disease, hoping you
will understand my point

Yours fairly friend,

Mrs Nicole Benoite Marois.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
