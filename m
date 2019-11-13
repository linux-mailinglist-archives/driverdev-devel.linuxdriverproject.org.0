Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 19474FB943
	for <lists+driverdev-devel@lfdr.de>; Wed, 13 Nov 2019 20:59:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C018A25A4D;
	Wed, 13 Nov 2019 19:58:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id p26ENOhIqM6g; Wed, 13 Nov 2019 19:58:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8BC93259C9;
	Wed, 13 Nov 2019 19:58:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 548AE1BF41D
 for <devel@linuxdriverproject.org>; Wed, 13 Nov 2019 19:58:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 51B6E873E6
 for <devel@linuxdriverproject.org>; Wed, 13 Nov 2019 19:58:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sv2PJ0FACx7Y for <devel@linuxdriverproject.org>;
 Wed, 13 Nov 2019 19:58:54 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 44069873E5
 for <devel@driverdev.osuosl.org>; Wed, 13 Nov 2019 19:58:54 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id l24so2004457pgh.10
 for <devel@driverdev.osuosl.org>; Wed, 13 Nov 2019 11:58:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yp3ARRkd5NkfCUczUVHgCJVk6/3Lv+lXQIjelXAeacM=;
 b=umCiXgUUYqyuuevl6Daiu5KEHQ4A71UiZ0CgXmD3OYHkYoUS+2t2Zdvk9SA4ZZkwLN
 N0ZIMgNBw5CkpYeSHFfWmCX4HuS/BqHcKCgGp6dOqfq4htH7bHiLowNzr8fwDJLQDAuo
 4CIvFXTxcQJRQK3eieTZGp49ldKmsc256IQYGti+ETw5IvLOwvLZX96k3jj27mV7AarV
 qS+MsmweeiweESYU9TizH/ci6uK4VYXf2sOWF3BE/oRZOtRbE+H55Bxjt5b4s43i0yxl
 nsSDDH67R1j7fru2ieB2GPefiP4JbzI6XkJQssUeh5smyV//qhwMhtXiyptWqgO0ejDm
 NN5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yp3ARRkd5NkfCUczUVHgCJVk6/3Lv+lXQIjelXAeacM=;
 b=dvoH3Jou9AyC6KeLRsFUIXjGpg/ed3WzaSMnQScsH0WiYlAjDiyuq/RtVvvglpGDTw
 G2XAEMcbRMgr5dAkTL4iKJ8Dm/xYMI/iou/VRCSArerhyJssUjJf6cgZdj1gtc/hbsFf
 y1vC0xNMYxjsaIFme+oEFi/srqyPaV9tCrhkgFdrzRwRppO3o+/RcYdPbEXpIxLUJuKR
 SM0ahq3yu8DOb3oNggHwX7M8AHeK7Y8HnMlYCU3Ft66oYajZ8WLrcWPaD0ZXoGabRsRM
 9V/YqfZf9LMo8+idRxZOwv9aNTK0WtZHBEA8c2qgloy6UAqew5OjCd0KDtTTH+/+jU3z
 91mg==
X-Gm-Message-State: APjAAAW/zEqxPb33VGATUi3cj9tseo5+cqe4omHTSrtSZTrNQ9vjRuTE
 oQ7hpcDVsWJAAtvBc4CivAN40FG21JQHXUImErDxvg==
X-Google-Smtp-Source: APXvYqyiJ2mVpqjdzhbFpzJOUEDdcjtxqAQpYO1kj8TRk8vgTtvR+8Yme002/CjhtaG+ITpzVvAmmDwXJWkj6W2HWxw=
X-Received: by 2002:a63:4a01:: with SMTP id x1mr5703425pga.312.1573675133351; 
 Wed, 13 Nov 2019 11:58:53 -0800 (PST)
MIME-Version: 1.0
References: <cover.1573482698.git.marcgonzalez@google.com>
 <6054322775b30a90c1fed28a085e5fd578ed70fa.1573482698.git.marcgonzalez@google.com>
 <20191113181742.GB3284@kadam>
In-Reply-To: <20191113181742.GB3284@kadam>
From: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
Date: Wed, 13 Nov 2019 14:58:42 -0500
Message-ID: <CAKvFj6pXPpjDviVijj-ChhwLJv5WdiXz66R9yp1ohWkgd=M8xA@mail.gmail.com>
Subject: Re: [PATCH 1/2] staging: vchiq: Move retrieval of rpi_firmware to
 vchiq_platform_init()
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
Cc: devel@driverdev.osuosl.org, Greg KH <gregkh@linuxfoundation.org>,
 linux-rpi-kernel@lists.infradead.org, Stefan Wahren <wahrenst@gmx.net>,
 eric@anholt.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Nov 13, 2019 at 1:19 PM Dan Carpenter <dan.carpenter@oracle.com> wrote:
>
> On Mon, Nov 11, 2019 at 12:14:23PM -0500, Marcelo Diop-Gonzalez wrote:
> > This allows the removal of the struct rpi_firmware* member
> > from struct vchiq_drvdata.
> >
>
> Please don't start your commit message in the middle of a sentence.
>
> It looks like this:
> https://marc.info/?l=linux-driver-devel&m=157349280800959&w=2

Whoops. Thanks for the pointer.

>
>
> > Signed-off-by: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
>
> regards,
> dan carpenter

-Marcelo
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
