Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B0CD52E976E
	for <lists+driverdev-devel@lfdr.de>; Mon,  4 Jan 2021 15:39:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6E203860FB;
	Mon,  4 Jan 2021 14:39:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gJm6kU4LSy1m; Mon,  4 Jan 2021 14:39:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5DD5585FA1;
	Mon,  4 Jan 2021 14:39:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7E0011BF346
 for <devel@linuxdriverproject.org>; Mon,  4 Jan 2021 14:39:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7A5A5870E1
 for <devel@linuxdriverproject.org>; Mon,  4 Jan 2021 14:39:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cCji3ovoFCsc for <devel@linuxdriverproject.org>;
 Mon,  4 Jan 2021 14:39:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com
 [209.85.167.50])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A650A870E0
 for <devel@driverdev.osuosl.org>; Mon,  4 Jan 2021 14:39:34 +0000 (UTC)
Received: by mail-lf1-f50.google.com with SMTP id h205so64793258lfd.5
 for <devel@driverdev.osuosl.org>; Mon, 04 Jan 2021 06:39:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/xaAhC2oWtPWkwgIj0AUJDvHlV3FXqovE+zexeAdrcw=;
 b=zdImf6wz6TM+RMClbtfU6hMMcLkJmsnsw/PrvYgzKH4gMaUBY+xWcOC+f7SMsqX3pe
 xWEhqObSyYcSMXFPPbdCjW8fE/QJtRTjsfhWDxnJnU97b84QVyk7FMDa56DYYKbHSRju
 HIvAZb1q3tUacIo1gdFsh7Sxmo6wgdm84aNiunEAo8+wLiPMWxUNGXn6ggBPm6bfExOv
 NMCV+yEvuICdK49b1c3R8mQLkOItxwVTDqQ9oW9eVnD0IIjRhOp++cGtCAYu7vCWsBmJ
 97xB6W2Z5mX4ZuBZzbkdhGUDxcO/JixuBlAG6WG/oLS9Fx7NWBCGfttrDzcEKIJQtQoN
 qL8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/xaAhC2oWtPWkwgIj0AUJDvHlV3FXqovE+zexeAdrcw=;
 b=iGsIX11Od4UTUuhFkTYxSbvDOrsSYzl1+lYt/gkaDcxSuxLlwlg1PbAnB0bfYFgetx
 yQcqP/45FIHxCJahY835qeGH1OJOVR8gCiQqV07q1wHWbE5SI96SSDyHFnU6rsA8hS/q
 g1AZX57hjXW3t6o52odBxqddvG8G/z2ZcA0OVKA+RzZop96xhEW/Rnr9n1UO6yx6nJU8
 50P8bftCV25ruhpes5jZ94hdwa72NCBWhWKWPEnxVxO+4n37phXCafr2L/sfp74qTUqc
 2zW7TKUJsD3ptYluwGyvO5XZueEmO2cIOqeiPLTXM0H5KXe0SUIPj/Bq+Iz61vYrvxWb
 45MA==
X-Gm-Message-State: AOAM530SDIgApEd2goHyF8YrjI4f6iMQKa6Vq9nbri4Bd/DAb9c0qBtI
 35Amx4JjfBqarQtfHDTCyo5tbK19+Fa7npZVMD66rw==
X-Google-Smtp-Source: ABdhPJyDdb+bBSf9hNOWvM9AqwI7sDTSzkyeS0RBhGZAffZIzFxBqm3f2vqe9P+0EylP1406/PPdkPvC1oHPswbeS5M=
X-Received: by 2002:a05:651c:205b:: with SMTP id
 t27mr37267869ljo.368.1609771172818; 
 Mon, 04 Jan 2021 06:39:32 -0800 (PST)
MIME-Version: 1.0
References: <20201213161721.6514-1-sergio.paracuellos@gmail.com>
In-Reply-To: <20201213161721.6514-1-sergio.paracuellos@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 4 Jan 2021 15:39:22 +0100
Message-ID: <CACRpkdb8z8su9HPkSdnRitVe0unuBDtg0azif19LGb84F=m19A@mail.gmail.com>
Subject: Re: [PATCH 0/8] pinctrl: ralink: rt2880: Some minimal clean ups
To: Sergio Paracuellos <sergio.paracuellos@gmail.com>
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
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Jason Yan <yanaijie@huawei.com>,
 Greg KH <gregkh@linuxfoundation.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Dec 13, 2020 at 5:17 PM Sergio Paracuellos
<sergio.paracuellos@gmail.com> wrote:

> After this driver was moved from staging into pinctrl subsytems
> some reviews for bindigns and driver itself comes from Ron Herring
> and Dan Carpenter. Get rid of all the comments to properly be in
> a good shape before merge window.

Applied patches 1-7 to the pinctrl tree, patch 8 needs to be sent
to Greg.

Yours,
Linus Walleij
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
