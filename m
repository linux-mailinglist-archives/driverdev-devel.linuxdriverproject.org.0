Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 197411E4F58
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 May 2020 22:33:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 80AA525304;
	Wed, 27 May 2020 20:33:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CElvY-NxaSLW; Wed, 27 May 2020 20:33:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id BA76D2048C;
	Wed, 27 May 2020 20:33:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B45A31BF591
 for <devel@linuxdriverproject.org>; Wed, 27 May 2020 20:33:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B086C87ED5
 for <devel@linuxdriverproject.org>; Wed, 27 May 2020 20:33:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ec4DM9wEEQLM for <devel@linuxdriverproject.org>;
 Wed, 27 May 2020 20:33:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f66.google.com (mail-io1-f66.google.com
 [209.85.166.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id CDBF487E71
 for <devel@driverdev.osuosl.org>; Wed, 27 May 2020 20:33:21 +0000 (UTC)
Received: by mail-io1-f66.google.com with SMTP id o5so27552873iow.8
 for <devel@driverdev.osuosl.org>; Wed, 27 May 2020 13:33:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2vFN875M4SjcSJqsQBhIyGl6yme7p3cXKTVvGnFDckQ=;
 b=PWYVMjGMInGK/+VGo90K1Nt077ISBvqH8S5m6aLr4ibsjLTafr454aQn5QUd9Jb3hg
 HIU8mhDByYhLX3UkQt4D2Rzx+UVqcITBJt/Z4Nm6cp0g3Yl09HlbCDBmvalwwApZDcJq
 TCSN2E+kQC1owKCySYdCL/ZBpO/l+v9tEX/zkwIqcVmYC3Es00307vvVuukW+gfBKFav
 i6oSBJGUvh2sDvYIrnmTx+zjY2VjsXPx1P13677f7kwCF/waz1sJrfeR5w+b0s69jvIE
 AHkw/MwxAJolk8NT1IA/Xyxgf38aptnsu1Ger4NNw9zCeR9Z9AU3V+o4nn5nRSj+QM8o
 ELDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2vFN875M4SjcSJqsQBhIyGl6yme7p3cXKTVvGnFDckQ=;
 b=MxLk4eKC20sX2yD4tcYwQ/7as302nqwQqkeXzCa5LKSAA+8ymuW7E5bCnyYjIAAdmG
 4c5Re7qvDt86LVWwV2zSVK3En6RxCJc4QCximgCpLkTt0+4SeKA1FmJujCbQkF2M+BCm
 RIddo/XUrXrrcZNVsOGhu04kaQO2/8V/b00v3kLgJL4coTRrjnX2VaZgl5t5PZFmNNWq
 hiwOfmium0VdgvesTD89PP5de+yG4yRMK0uDqBAbzcITzYws7KUVs9Fhe9dTG7VPATV7
 4fkwjZMNjy+jh8p0dd3LD0cEnyaoxaJ8/ZmVIHLf+f+hXAGJQby3GN32FM6D+hBX6UE6
 xQNA==
X-Gm-Message-State: AOAM530rKCjMmHw1ln9m0tKBr3PGqAC5/WSO2aSP6Yi1YOPMTh+dV5ni
 /wxbKyhUPOEH5wfl8SSqtxxkZcHebqcPuX6tXX0QqQ==
X-Google-Smtp-Source: ABdhPJwjayx9asTvHrdVtxj1V1NSaSKRT0BosTcJ5cpULOtZMGwSZrsfDFwEsny8NbcaKy/c0xKEWbch/jHI5WEaREE=
X-Received: by 2002:a02:3b4b:: with SMTP id i11mr7539961jaf.16.1590611600730; 
 Wed, 27 May 2020 13:33:20 -0700 (PDT)
MIME-Version: 1.0
References: <20200523212919.33181-1-pterjan@google.com>
 <20200527194811.GF30374@kadam>
In-Reply-To: <20200527194811.GF30374@kadam>
From: Pascal Terjan <pterjan@google.com>
Date: Wed, 27 May 2020 21:33:03 +0100
Message-ID: <CAANdO=LqcHOzxSjudw+G+292sjguOoA-E2y4iAFZtCfa0UFe1A@mail.gmail.com>
Subject: Re: [PATCH] staging: rtl8723bs: Use shared header constants
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, 27 May 2020 at 20:48, Dan Carpenter <dan.carpenter@oracle.com> wrote:
>
> On Sat, May 23, 2020 at 10:29:19PM +0100, Pascal Terjan wrote:
> > This is one of the 9 drivers redefining rfc1042_header.
> >
>
> This is how the patch looks like in my email client:
>
> https://marc.info/?l=linux-driver-devel&m=159026973821890&w=2
>
> Do you see how the subject is far away from the body of the commit
> message?  I normally only read the subject or the body when I'm
> reviewing patches so it's good if the body is clear on its own.  Maybe
> write something like:
>
> "This driver creates a local definitions of "rtw_rfc1042_header" and
> "rtw_bridge_tunnel_header" but it should just use the standard definitions
> from cfg80211.h."

Thanks, I see both together when writing the commit message and need
to remember they are actually separate.

> >  void _rtw_init_sta_recv_priv(struct sta_recv_priv *psta_recvpriv)
> > @@ -1625,11 +1622,11 @@ sint wlanhdr_to_ethhdr(union recv_frame *precvframe)
> >       psnap_type = ptr+pattrib->hdrlen + pattrib->iv_len+SNAP_SIZE;
> >       /* convert hdr + possible LLC headers into Ethernet header */
> >       /* eth_type = (psnap_type[0] << 8) | psnap_type[1]; */
> > -     if ((!memcmp(psnap, rtw_rfc1042_header, SNAP_SIZE) &&
> > -             (memcmp(psnap_type, SNAP_ETH_TYPE_IPX, 2)) &&
> > -             (memcmp(psnap_type, SNAP_ETH_TYPE_APPLETALK_AARP, 2))) ||
> > -             /* eth_type != ETH_P_AARP && eth_type != ETH_P_IPX) || */
> > -              !memcmp(psnap, rtw_bridge_tunnel_header, SNAP_SIZE)) {
> > +     if ((!memcmp(psnap, rfc1042_header, SNAP_SIZE) &&
> > +          memcmp(psnap_type, SNAP_ETH_TYPE_IPX, 2) &&
> > +          memcmp(psnap_type, SNAP_ETH_TYPE_APPLETALK_AARP, 2)) ||
> > +         /* eth_type != ETH_P_AARP && eth_type != ETH_P_IPX) || */
> > +         !memcmp(psnap, bridge_tunnel_header, SNAP_SIZE)) {
> >               /* remove RFC1042 or Bridge-Tunnel encapsulation and replace EtherType */
> >               bsnaphdr = true;
>
> Your indenting is correct, but I would probably do that in a separate
> patch.  It makes it harder to review.  Also probably delete the
> commented out code.  Do you see how if we don't touch the indenting then
> it doesn't raise the question about if we should delete the comments as
> well?

I initially didn't want to change it but checkpatch was sad which
makes me sad, maybe I should have cleaned up this area in a first
trivial patch before touching that line.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
