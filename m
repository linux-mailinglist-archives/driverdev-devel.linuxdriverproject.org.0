Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F2D402AFDB7
	for <lists+driverdev-devel@lfdr.de>; Thu, 12 Nov 2020 06:18:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9714F86C62;
	Thu, 12 Nov 2020 05:18:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2Vm0Tuapgsp7; Thu, 12 Nov 2020 05:18:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8273B86C20;
	Thu, 12 Nov 2020 05:18:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9E91F1BF857
 for <devel@linuxdriverproject.org>; Thu, 12 Nov 2020 05:18:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8F0CB86C20
 for <devel@linuxdriverproject.org>; Thu, 12 Nov 2020 05:18:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mWO3fVIONaxv for <devel@linuxdriverproject.org>;
 Thu, 12 Nov 2020 05:18:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com
 [209.85.210.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 19AB686C1B
 for <devel@driverdev.osuosl.org>; Thu, 12 Nov 2020 05:18:39 +0000 (UTC)
Received: by mail-ot1-f67.google.com with SMTP id i18so4492282ots.0
 for <devel@driverdev.osuosl.org>; Wed, 11 Nov 2020 21:18:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WfgY4NBj+0PmzbiLq+b9+ULskd59tjpCJgRhyG5J0k8=;
 b=hqYpjrD8LkGtcU9kRUoSDHu9D+nk/BoGIjKN/O4ZTOEsso58G3xzPVJwEtiqnqq/iz
 EutCOAWnRjPC4M3P4mKu1vAmlysKAJJ39gT67ujEtIEFZnYudURzfEEaFFvoby5PYDeg
 WGwgQ8oX+IFYpLnbesqy5Ia9/WJUAk2Xl9Dxv6an9vZyDdVb2y8os93JKHiy1AKEouPz
 ZdURh7ongmDTj7ui0P6A3RoB/Z+s3HqGImY6wP6yiACbPwssgtDy4+QGSZtRfSncp5oP
 HYpY+qBgimQSDzpzvqB38FTtLcdq0cTY6PTDehza5Drh4GFO/c99hgr7Pt7uK18kFWxs
 EXyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WfgY4NBj+0PmzbiLq+b9+ULskd59tjpCJgRhyG5J0k8=;
 b=PYiYYyo/iIV6le+pyS1+2c9WBw+eq5RqS7sgUC0ASSq+r3WPmAee1VIOTv0BeccDbg
 VNXKhQliR0+KZtJViBhvnJ+eX8cmApdTW9Lly6EVwhATpa24vKQVqY8akSrVgqQXFHy6
 f7ZU33UdkhtyBx6H0JpQpFlGTWIxxITDjFXP6GO/sf3ufPonDj12XMKN80vXtIXwsu4f
 5IoMSebodegnmMhod/Wo2a8C6GScIGv7BItwLK6cZ4Rtb6PV3E7SZJiEa42hgRU0kKLj
 eGF/34DkSmTAWrNaJ3oCpMySJU/gYBZY4IzNkeE5L/ZBihJSro0NXSTwXdKD1Wi1apFd
 7DLQ==
X-Gm-Message-State: AOAM530aeefXv2sji6wJMlTdR8x0ZQEBuwal8/Rc0MjVoBbQs+LtVgsH
 61isocQI6NaDVOsXsn5asSaUiKd97gb/vbMkpOY=
X-Google-Smtp-Source: ABdhPJyTTQiPTf7wS9BZ6pXrL5d1+bU06pCVQUQ/opNV4D1HnkXpInj1YDPkUdArvXy14TA/5jvWZEbAY8aB1+dFm1Y=
X-Received: by 2002:a05:6830:18c9:: with SMTP id
 v9mr21231685ote.74.1605158318274; 
 Wed, 11 Nov 2020 21:18:38 -0800 (PST)
MIME-Version: 1.0
References: <20201111163013.29412-1-sergio.paracuellos@gmail.com>
 <CAJsYDVJtPqd-aPjJZFC76R2fbv1i=tVzRR7S1VFAMzp1QcPbiQ@mail.gmail.com>
In-Reply-To: <CAJsYDVJtPqd-aPjJZFC76R2fbv1i=tVzRR7S1VFAMzp1QcPbiQ@mail.gmail.com>
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Thu, 12 Nov 2020 06:18:27 +0100
Message-ID: <CAMhs-H8ZXQ_2uJV4GC5J+sv4wmZUY8iGm-c5d-3X9t8e1PnfaQ@mail.gmail.com>
Subject: Re: [PATCH 0/7] MIPS: ralink: add CPU clock detection and clock gate
 driver for MT7621
To: Chuanhong Guo <gch981213@gmail.com>
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
Cc: Weijie Gao <hackpascal@gmail.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Stephen Boyd <sboyd@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Michael Turquette <mturquette@baylibre.com>,
 "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 open list <linux-kernel@vger.kernel.org>, jiaxun.yang@flygoat.com,
 "open list:MIPS" <linux-mips@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, John Crispin <john@phrozen.org>,
 "open list:COMMON CLK FRAMEWORK" <linux-clk@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Chuanhong,

On Thu, Nov 12, 2020 at 2:26 AM Chuanhong Guo <gch981213@gmail.com> wrote:
[snip]
>
> I've already said in previous threads that clock assignment in
> current linux kernel is not trustworthy.
> I've got the clock plan for mt7621 now. (Can't share it, sorry.)
> Most of your clock assumptions above are incorrect.

Well, that was of course expected, without a real clock plan this
driver was only taking into account Oleksij Rempel suggestions to try
to make a driver good enough to properly be maintained :).

> I've made a clock driver with gate support a few months ago.[0]
> but I don't have much time to really finish it.
> Maybe you could rework your clock gate driver based on it.
>
> [0] https://github.com/981213/linux/commit/2eca1f045e4c3db18c941135464c0d7422ad8133

Thanks for the link, I see there are three more clocks there with
frequencies of 125, 250 and 270 Mhz. all of them having main xtal as
parent. Ok, I will take this real information into account and will
send v2 after a bit of more feedback comes.

> --
> Regards,
> Chuanhong Guo

Best regards,
     Sergio Paracuellos
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
