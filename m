Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F4F958977
	for <lists+driverdev-devel@lfdr.de>; Thu, 27 Jun 2019 20:07:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B4B368804A;
	Thu, 27 Jun 2019 18:07:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YyG0fKMlhnsJ; Thu, 27 Jun 2019 18:07:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8492E88007;
	Thu, 27 Jun 2019 18:07:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F3B5F1BF9B7
 for <devel@linuxdriverproject.org>; Thu, 27 Jun 2019 18:06:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id F0A4F862D4
 for <devel@linuxdriverproject.org>; Thu, 27 Jun 2019 18:06:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id juAbYxEuOYRA for <devel@linuxdriverproject.org>;
 Thu, 27 Jun 2019 18:06:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7C571862C9
 for <devel@driverdev.osuosl.org>; Thu, 27 Jun 2019 18:06:16 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id p184so1616551pfp.7
 for <devel@driverdev.osuosl.org>; Thu, 27 Jun 2019 11:06:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=lpDteih+7Mwk3qi3q2DEXwZhCQnN7OcR40EX+t/sQPg=;
 b=eMcOXysocU25goHi5fJUxWVNFCuesp/pFiguhDcfzZlpefOu5w+4IycyjOMGmgrgTO
 IvvfmvXUoRWx+EuSILhTiKPTeUVuvIysGzKd6zhALcABgStEbnnY5coA734vFNhgTVxE
 C+XHdi0kGfceLr5ikCzl5fbBY2m9R3hV2MaGu12mTrpTqavE2e4AV30BiD2mIG/a6J27
 b05wQnK/3RS1sg1hcqWLGZawBFcu5PKBCT39QxQZqlcYc8DbeVubrr+yn8fgE0o161mH
 Qq4UosfC4BtH626F11kde/qyCI2/HTV+HcLTr7jjr2w/FIR6vrf367H15VKMRgTL4Elu
 XD4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lpDteih+7Mwk3qi3q2DEXwZhCQnN7OcR40EX+t/sQPg=;
 b=Vjfd92RA5LPztScM4tIEL3facOG2y4FRrSb68jP6GyS3fO6Z8e8bEK3c5+te7fqHM2
 keAGGUP6QyqCLisR108a6c0+X4ozuHQ+rMHpZt5zpSHpyAMe5tiVffSHVvaeirn6E9Fp
 UNKDwoYhZBErFe3qaSNr0Sbo+sKNI2ooMlctr22WSjcmEQnJlpCR+wizadYzh4K8+0de
 2LBMLrIx5s9Gpu4mpn5B2kAYHOA+/7c2AaK1S2AgNtE9FpJUD+ePpsnUOQvFLBVjF4IH
 IbEgy3DuxGNNlzICvCZ01An36O8hgbhYhRtDzSNLkg8WtVymopx2s587+/jvzK8HtFCj
 qGgw==
X-Gm-Message-State: APjAAAWau/3QT6JRmQ6F0x/WgCDS8JCc4UZo4oacCax7qcyDsXz39aPl
 vUW3PaGQ99gvAEnMR7fuw2zsDnhaCpKHwuGXtQg=
X-Google-Smtp-Source: APXvYqzub2uqR+XZxgbgN0+2ECwb6yE2KqcgaKCTFRxCn8WIcsRCskSLPnsMHOSzwwcv6Wie2xg7zu/ZVmvq3wTxOrg=
X-Received: by 2002:a63:c0e:: with SMTP id b14mr4979692pgl.4.1561658775935;
 Thu, 27 Jun 2019 11:06:15 -0700 (PDT)
MIME-Version: 1.0
References: <20190627174147.4504-1-huangfq.daxian@gmail.com>
In-Reply-To: <20190627174147.4504-1-huangfq.daxian@gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Thu, 27 Jun 2019 21:06:03 +0300
Message-ID: <CAHp75VfRAfJc3498v7qf_X1H8R5ErrZCRPS+ppY3rGe95U62CA@mail.gmail.com>
Subject: Re: [PATCH 48/87] rtl8723bs: os_dep: replace rtw_malloc and memset
 with rtw_zmalloc
To: Fuqian Huang <huangfq.daxian@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Mamta Shukla <mamtashukla555@gmail.com>, Jia-Ju Bai <baijiaju1990@gmail.com>,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 Omer Efrat <omer.efrat@tandemg.com>,
 Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>,
 Emanuel Bennici <benniciemanuel78@gmail.com>, Wen Yang <wen.yang99@zte.com.cn>,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Jun 27, 2019 at 8:41 PM Fuqian Huang <huangfq.daxian@gmail.com> wrote:
>
> rtw_malloc + memset(0) -> rtw_zmalloc

I have a feeling that everything under os_dep folder should be
replaced with native kernel APIs.

>  drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c |  8 ++------
>  drivers/staging/rtl8723bs/os_dep/ioctl_linux.c    | 12 +++---------

-- 
With Best Regards,
Andy Shevchenko
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
