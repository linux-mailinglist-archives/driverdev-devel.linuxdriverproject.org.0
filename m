Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D38F2EAD44
	for <lists+driverdev-devel@lfdr.de>; Tue,  5 Jan 2021 15:20:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0D80A86948;
	Tue,  5 Jan 2021 14:20:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y3hXxYlxX8cJ; Tue,  5 Jan 2021 14:20:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3C7DA86824;
	Tue,  5 Jan 2021 14:20:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E2D531BF2C7
 for <devel@linuxdriverproject.org>; Tue,  5 Jan 2021 14:20:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DEF5B8683C
 for <devel@linuxdriverproject.org>; Tue,  5 Jan 2021 14:20:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JOATT2LMqC5G for <devel@linuxdriverproject.org>;
 Tue,  5 Jan 2021 14:20:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7B54686824
 for <devel@driverdev.osuosl.org>; Tue,  5 Jan 2021 14:20:16 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1F81C22ADF
 for <devel@driverdev.osuosl.org>; Tue,  5 Jan 2021 14:20:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1609856416;
 bh=8N6plM1j23UTnKQtyjPvKcNWup+TTrXuMvgzJn/tfcI=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=SNh1gxt6Tvwa1TfNiuFSDPCVZgL4ZCmCZ8bzfC8JzEJldpR3mkp7AqT3vvQkzwjIq
 UpUGGvoHTkxu6WE7jP7/1CpyCuC5Zu3PAlH+c1Y84vMkp03U4A3tHXagx5O3Fp189R
 b+MahRPYHulHNqRCrAqx511FEqgw5FxsOlNJF/oXutUq1NcSLy6oIuDxHmyNcoU7VF
 +hxjLFFqRC0/vzlmApGGhBAObrVje8JA3KLgrGlv2m5Tir/c+dQqp9kVcoZTl6nbtl
 Zu1sPdotncKp5bMCtC8Sa3bkAparNPxdnWILFgkeAwPccPad4+/fDytddhJV8ry+Jc
 sPBfBBNOTTgGg==
Received: by mail-ot1-f45.google.com with SMTP id j12so29341970ota.7
 for <devel@driverdev.osuosl.org>; Tue, 05 Jan 2021 06:20:16 -0800 (PST)
X-Gm-Message-State: AOAM532axikr6xo8BgrlvilymD2G6KOlfNSCTogX9lEn9vkFsFf4hYEh
 NbZhiTvzGaf0eA1LCsPzUcCGVQXbp3xa7b5j+64=
X-Google-Smtp-Source: ABdhPJzWZhGmEiOC8monvUArry9q/k4DSTunaEOzIDFi61U4RHc6je1F4O83eXiecIeCdLY6rkIzSwkSsgKzgQdxU+8=
X-Received: by 2002:a9d:7a4b:: with SMTP id z11mr56161713otm.305.1609856415452; 
 Tue, 05 Jan 2021 06:20:15 -0800 (PST)
MIME-Version: 1.0
References: <X/RnUjY3XkZohk7w@mwanda>
In-Reply-To: <X/RnUjY3XkZohk7w@mwanda>
From: Arnd Bergmann <arnd@kernel.org>
Date: Tue, 5 Jan 2021 15:19:58 +0100
X-Gmail-Original-Message-ID: <CAK8P3a2dGXh8VOdiG38hbJH9oFFUTE8P4p+53yOnh=tw+JoD2g@mail.gmail.com>
Message-ID: <CAK8P3a2dGXh8VOdiG38hbJH9oFFUTE8P4p+53yOnh=tw+JoD2g@mail.gmail.com>
Subject: Re: [PATCH] staging: vchiq: delete obselete comment
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
Cc: driverdevel <devel@driverdev.osuosl.org>, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Marcelo Diop-Gonzalez <marcgonzalez@google.com>,
 kernel-janitors@vger.kernel.org,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 "moderated list:BROADCOM BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>,
 Amarjargal Gundjalam <amarjargal16@gmail.com>,
 Phil Elwell <phil@raspberrypi.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Jan 5, 2021 at 2:19 PM Dan Carpenter <dan.carpenter@oracle.com> wrote:
>
> This comment describes a security problem which was fixed in commit
> 1c954540c0eb ("staging: vchiq: avoid mixing kernel and user pointers").
> The bug is fixed now so the FIXME can be removed.
>
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>

Reviewed-by: Arnd Bergmann <arnd@arndb.de>

There is still another sparse warning for a remaining __user address
space mismatch in the driver, but this one seems to be fixed as you
say. Thanks for the fix!

      Arnd
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
