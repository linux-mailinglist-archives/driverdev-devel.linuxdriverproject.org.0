Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 71ACB225352
	for <lists+driverdev-devel@lfdr.de>; Sun, 19 Jul 2020 20:12:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6EDCC86822;
	Sun, 19 Jul 2020 18:12:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TFQiGffA3vJS; Sun, 19 Jul 2020 18:12:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E4F78868A8;
	Sun, 19 Jul 2020 18:12:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1280C1BF33E
 for <devel@linuxdriverproject.org>; Sun, 19 Jul 2020 18:12:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0E8DE858F5
 for <devel@linuxdriverproject.org>; Sun, 19 Jul 2020 18:12:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Zyll1YkNfuSs for <devel@linuxdriverproject.org>;
 Sun, 19 Jul 2020 18:12:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 602898561D
 for <devel@driverdev.osuosl.org>; Sun, 19 Jul 2020 18:12:04 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id x9so7649346plr.2
 for <devel@driverdev.osuosl.org>; Sun, 19 Jul 2020 11:12:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=kxZp5oQLXLp2mcGfAQe0wlBX6+dD2V4bhp1ZWl8hiqM=;
 b=hXaBS10Fqhq432zqPQ3rSbg/lJhhUXwu0Bts4s5ZuJR0FNddji/eu8ggs2cyRJRZww
 54ox3nSLBWhafPF8aV1WWsBow5JA3iz5MxwH/GOQJNbtfLRI7xhKxwA+QRAvODVkzjHl
 stcAp18Ha7VQEiJvVXF2LiceVCcHbVb+Br+5UZlvibpv2p1no3hWPjkOgnXllbVeOgRI
 gQwZ47Ubp5XicTFVvKlK2FMjNTyVA5Vo2aI8bIpf70yXkUL6RPL3iWbi29Ai1YUbKttG
 0ud0k+TdAdwpzXt9lT5LB7csP5YRa/LTD1XlQ9N/5tDfszeKnR4r+gEVEmyKMi33lxIV
 LDZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=kxZp5oQLXLp2mcGfAQe0wlBX6+dD2V4bhp1ZWl8hiqM=;
 b=SJ+D71WnuW8XJhHLhBEx03R6feMr+4tEDk3g+kAg55u+3oOzAt2z+x8q3vVnprw2yF
 ULF8Ur05Lsqb7+4f6h3V0NmHB+wARWUC9YWXZjftkI5Zt54t5DIvZWLufbz5SpWBy79n
 oKKGmNOxBvH6Z3mJEwBv0Yy7A2TBwT0dSwfOqTvsG0ue8nc7eAe/PZvh6siRbbisZvm3
 hHILGuJxVa2re14I2eb9dPQOwH7pQN2krA5eTmuopqzoGhUx7aEOnf4v0GXvl3U6rePI
 t37n3SbFvf+72hsLzt3kib+wMPRZDbUPtP+VkfwUvur4sZHEsvtZYNPss5zMEhvZoNbU
 dAMw==
X-Gm-Message-State: AOAM5300PKVg56lqoLT1Mskf/PvGaw0msNCbhy2PGhehlZ7d8h7hqI5n
 A//Ojwx6+teY3izQoYXA+OM=
X-Google-Smtp-Source: ABdhPJxa+u1x4+zWtMj1qS+kTxLzw51OdKtEp/n1No2Fqb0RJgRlPcvHscfCaCdnCoIKozfLl2Rzig==
X-Received: by 2002:a17:90a:110:: with SMTP id
 b16mr19295803pjb.235.1595182323905; 
 Sun, 19 Jul 2020 11:12:03 -0700 (PDT)
Received: from thinkpad ([69.172.171.109])
 by smtp.gmail.com with ESMTPSA id g5sm9027863pjl.31.2020.07.19.11.12.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 19 Jul 2020 11:12:03 -0700 (PDT)
Date: Sun, 19 Jul 2020 11:12:23 -0700
From: Rustam Kovhaev <rkovhaev@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] staging: wlan-ng: properly check endpoint types
Message-ID: <20200719181223.GA210062@thinkpad>
References: <20200718155836.86384-1-rkovhaev@gmail.com>
 <20200719092338.GC171181@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200719092338.GC171181@kroah.com>
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
Cc: devel@driverdev.osuosl.org,
 syzbot+c2a1fa67c02faa0de723@syzkaller.appspotmail.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Jul 19, 2020 at 11:23:38AM +0200, Greg KH wrote:
> On Sat, Jul 18, 2020 at 08:58:36AM -0700, Rustam Kovhaev wrote:
> > As syzkaller detected, wlan-ng driver submits bulk urb without checking
> > that the endpoint type is actually bulk, add usb_urb_ep_type_check()
> > 
> > Reported-and-tested-by: syzbot+c2a1fa67c02faa0de723@syzkaller.appspotmail.com
> > Link: https://syzkaller.appspot.com/bug?extid=c2a1fa67c02faa0de723
> > Signed-off-by: Rustam Kovhaev <rkovhaev@gmail.com>
> > ---
> >  drivers/staging/wlan-ng/hfa384x_usb.c | 14 ++++++++++++++
> >  1 file changed, 14 insertions(+)
> > 
> > diff --git a/drivers/staging/wlan-ng/hfa384x_usb.c b/drivers/staging/wlan-ng/hfa384x_usb.c
> > index fa1bf8b069fd..7cde60ea68a2 100644
> > --- a/drivers/staging/wlan-ng/hfa384x_usb.c
> > +++ b/drivers/staging/wlan-ng/hfa384x_usb.c
> > @@ -339,6 +339,12 @@ static int submit_rx_urb(struct hfa384x *hw, gfp_t memflags)
> >  
> >  	hw->rx_urb_skb = skb;
> >  
> > +	result = usb_urb_ep_type_check(&hw->rx_urb);
> > +	if (result) {
> > +	       netdev_warn(hw->wlandev->netdev, "invalid rx endpoint");
> > +	       goto cleanup;
> > +	}
> 
> In looking at this again, can you just make these checks in the probe
> function, and abort binding the driver to the device at that point in
> time?  This feels really late in the init sequence.
> 
> The real problem here is in the hfa384x_create() function, where it
> blindly takes the 1 and 2 endpoints and assumes that those are the
> "correct type".  How about checking the types there, and if they are
> incorrect, returning an error from that function and have the caller
> return the error as well.
> 
> That should keep anything else in the driver from being initialized and
> set up, and stop bad devices from being bound to the driver at a much
> earlier point in time.
> 
> Note, just checking for the valid type/direction of those endpoints
> should be sufficient.
> 
tyvm for the feedback! makes perfect sense, i'll send a new patch

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
