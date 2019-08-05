Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A9B908250E
	for <lists+driverdev-devel@lfdr.de>; Mon,  5 Aug 2019 20:52:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 16C612046F;
	Mon,  5 Aug 2019 18:52:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2dxrFaczbV3b; Mon,  5 Aug 2019 18:52:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D870820436;
	Mon,  5 Aug 2019 18:51:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 301F01BF35D
 for <devel@linuxdriverproject.org>; Mon,  5 Aug 2019 18:51:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2D6F82036F
 for <devel@linuxdriverproject.org>; Mon,  5 Aug 2019 18:51:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gTn6uNgoy-hN for <devel@linuxdriverproject.org>;
 Mon,  5 Aug 2019 18:51:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f67.google.com (mail-lf1-f67.google.com
 [209.85.167.67])
 by silver.osuosl.org (Postfix) with ESMTPS id A35E720363
 for <devel@driverdev.osuosl.org>; Mon,  5 Aug 2019 18:51:55 +0000 (UTC)
Received: by mail-lf1-f67.google.com with SMTP id v16so4977798lfg.11
 for <devel@driverdev.osuosl.org>; Mon, 05 Aug 2019 11:51:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BNhKN5SY5q1+Mh+bjmt4HOn1FwJMHHMXbbFzHulQuBA=;
 b=HvQXURsJ/hkQM8yat12DaOuMDtErvGYk6k+LCzjCht/+Ckd1Y8ox1ePPbawawgk78c
 hN9PMHoSzhudNTZyTami/VzslKW7BUz4TM7ldLTk4Q0PXL67ZgTA6x/Mh1TMEAFHeuCA
 MNFAiMXz0V/aKLG+N/o+AXqqKpesL4rGbXobKvuI+0VnwZKqRsD8GJchPGpkbc4Kc9MA
 /9mzo31Mor4/8qCtSpkPSyKYuNhAwG4x7/T5AXftePE3Mjf1kgaHfbyj8548YgOND4Vd
 j9E22OVtQCz2B0Gm/WX35l/YTRgrj6kqXjoS8kkOvNjRBUEB2ig4p6TylSGTF7DO/dAv
 hGmw==
X-Gm-Message-State: APjAAAUwKkyFLFFs3Fq2IqtEujwaNFNiozYLgDn5x6PU61BPY1ZWJVuo
 LWdoNFi3wBP4EmWgkQE7yyo1WT+SPO0=
X-Google-Smtp-Source: APXvYqw926atBZSefxoGoI8XFHcAsEcBJsdtqZEM0oyoPoNFs4hnigU0yCbqqRVHKtsZ9Th59Wa6UA==
X-Received: by 2002:a19:7006:: with SMTP id h6mr71323430lfc.5.1565031113265;
 Mon, 05 Aug 2019 11:51:53 -0700 (PDT)
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com.
 [209.85.208.173])
 by smtp.gmail.com with ESMTPSA id l23sm17465810lje.106.2019.08.05.11.51.52
 for <devel@driverdev.osuosl.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 05 Aug 2019 11:51:52 -0700 (PDT)
Received: by mail-lj1-f173.google.com with SMTP id y17so55601830ljk.10
 for <devel@driverdev.osuosl.org>; Mon, 05 Aug 2019 11:51:52 -0700 (PDT)
X-Received: by 2002:a2e:9b4a:: with SMTP id o10mr22932480ljj.137.1565031112745; 
 Mon, 05 Aug 2019 11:51:52 -0700 (PDT)
MIME-Version: 1.0
References: <20190802202323.27117-1-thbonotto@gmail.com>
 <20190805145020.GE1974@kadam>
In-Reply-To: <20190805145020.GE1974@kadam>
From: Helen Koike <helen@koikeco.de>
Date: Mon, 5 Aug 2019 15:51:41 -0300
X-Gmail-Original-Message-ID: <CAPW4XYb-KycdZjfb7y786+3VJhfxhj-9qs7DCr3Kyc8o3kUysw@mail.gmail.com>
Message-ID: <CAPW4XYb-KycdZjfb7y786+3VJhfxhj-9qs7DCr3Kyc8o3kUysw@mail.gmail.com>
Subject: Re: [Lkcamp] [PATCH] staging: isdn: remove unnecessary parentheses
To: Dan Carpenter <dan.carpenter@oracle.com>
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
Cc: devel@driverdev.osuosl.org, Karsten Keil <isdn@linux-pingi.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 lkcamp@lists.libreplanetbr.org, netdev@vger.kernel.org,
 Thiago Bonotto <thbonotto@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi,

On Mon, Aug 5, 2019 at 11:51 AM Dan Carpenter <dan.carpenter@oracle.com> wrote:
>
> This driver is obselete so we're just keeping it around for a couple
> kernel releases and then deleting it.  We're not taking cleanups for it.

I'm sorry, it was me who suggested Thiago to make this change
as his first contribution, I didn't see the TODO file.

Thiago, it would be great if you could send a patch to another staging driver
to get starting and to learn how the kernel development cycle works.
Feel free to ping me or the lkcamp group if you want some pointers/guidance.

Thanks both for your contribution.
Helen

>
> regards,
> dan carpenter
>
>
> _______________________________________________
> Lkcamp mailing list
> Lkcamp@lists.libreplanetbr.org
> https://lists.libreplanetbr.org/mailman/listinfo/lkcamp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
