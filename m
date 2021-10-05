Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 077F1421EFC
	for <lists+driverdev-devel@lfdr.de>; Tue,  5 Oct 2021 08:44:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 40269608CB;
	Tue,  5 Oct 2021 06:44:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R0sTnfAz0B7O; Tue,  5 Oct 2021 06:44:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2022D608C7;
	Tue,  5 Oct 2021 06:44:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 85F6A1BF3C9
 for <devel@linuxdriverproject.org>; Tue,  5 Oct 2021 06:44:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 74C53832D8
 for <devel@linuxdriverproject.org>; Tue,  5 Oct 2021 06:44:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9CWMW1eu2gQG for <devel@linuxdriverproject.org>;
 Tue,  5 Oct 2021 06:44:22 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4BD1A8329D
 for <devel@driverdev.osuosl.org>; Tue,  5 Oct 2021 06:44:22 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 75CA261165;
 Tue,  5 Oct 2021 06:44:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1633416261;
 bh=cXUDZv200Bhhq7gsR76VWgnrwqp0ABdauVK7hmqot5w=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ZV5n+9UvZODI6hqY+hb84xZZ1gka6VxdbbUQjl/0NAUqSzWU7FrBtKsWVpAkb0irz
 V8vqf+Kaa2+NvGcLcV5IQbzHRf1XRZ0WnY97LaQ7AwSDXBd/kpmrzPVe4o70wgrxNY
 1JOlhmTWHZ964BV2Q0fLJw6wiy7KiwOZnkTdV6+c=
Date: Tue, 5 Oct 2021 08:44:19 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Kalle Valo <kvalo@codeaurora.org>
Subject: Re: [PATCH v7 13/24] wfx: add hif_tx*.c/hif_tx*.h
Message-ID: <YVv0Q4ARfh/ebof5@kroah.com>
References: <20210920161136.2398632-1-Jerome.Pouiller@silabs.com>
 <20210920161136.2398632-14-Jerome.Pouiller@silabs.com>
 <87fstlkr1m.fsf@codeaurora.org> <2873071.CAOYYqaKbK@pc-42>
 <20211001161316.w3cwsigacznjbowl@pali>
 <87tuhwf19w.fsf@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87tuhwf19w.fsf@codeaurora.org>
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 Ulf Hansson <ulf.hansson@linaro.org>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-mmc@vger.kernel.org,
 Pali =?iso-8859-1?Q?Roh=E1r?= <pali@kernel.org>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Oct 05, 2021 at 09:12:27AM +0300, Kalle Valo wrote:
> Pali Roh=E1r <pali@kernel.org> writes:
> =

> > On Friday 01 October 2021 17:17:52 J=E9r=F4me Pouiller wrote:
> >> On Friday 1 October 2021 11:55:33 CEST Kalle Valo wrote:
> >> > CAUTION: This email originated from outside of the organization.
> >> > Do not click links or open attachments unless you recognize the
> >> > sender and know the content is safe.
> >> > =

> >> > =

> >> > Jerome Pouiller <Jerome.Pouiller@silabs.com> writes:
> >> > =

> >> > > From: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>
> >> > >
> >> > > Signed-off-by: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>
> >> > =

> >> > [...]
> >> > =

> >> > > --- /dev/null
> >> > > +++ b/drivers/net/wireless/silabs/wfx/hif_tx_mib.h
> >> > > @@ -0,0 +1,49 @@
> >> > > +/* SPDX-License-Identifier: GPL-2.0-only */
> >> > > +/*
> >> > > + * Implementation of the host-to-chip MIBs of the hardware API.
> >> > > + *
> >> > > + * Copyright (c) 2017-2020, Silicon Laboratories, Inc.
> >> > > + * Copyright (c) 2010, ST-Ericsson
> >> > > + * Copyright (C) 2010, ST-Ericsson SA
> >> > > + */
> >> > > +#ifndef WFX_HIF_TX_MIB_H
> >> > > +#define WFX_HIF_TX_MIB_H
> >> > > +
> >> > > +struct wfx_vif;
> >> > > +struct sk_buff;
> >> > > +
> >> > > +int hif_set_output_power(struct wfx_vif *wvif, int val);
> >> > > +int hif_set_beacon_wakeup_period(struct wfx_vif *wvif,
> >> > > +                              unsigned int dtim_interval,
> >> > > +                              unsigned int listen_interval);
> >> > > +int hif_set_rcpi_rssi_threshold(struct wfx_vif *wvif,
> >> > > +                             int rssi_thold, int rssi_hyst);
> >> > > +int hif_get_counters_table(struct wfx_dev *wdev, int vif_id,
> >> > > +                        struct hif_mib_extended_count_table *arg);
> >> > > +int hif_set_macaddr(struct wfx_vif *wvif, u8 *mac);
> >> > > +int hif_set_rx_filter(struct wfx_vif *wvif,
> >> > > +                   bool filter_bssid, bool fwd_probe_req);
> >> > > +int hif_set_beacon_filter_table(struct wfx_vif *wvif, int tbl_len,
> >> > > +                             const struct hif_ie_table_entry *tbl=
);
> >> > > +int hif_beacon_filter_control(struct wfx_vif *wvif,
> >> > > +                           int enable, int beacon_count);
> >> > > +int hif_set_operational_mode(struct wfx_dev *wdev, enum
> >> > > hif_op_power_mode mode);
> >> > > +int hif_set_template_frame(struct wfx_vif *wvif, struct sk_buff *=
skb,
> >> > > +                        u8 frame_type, int init_rate);
> >> > > +int hif_set_mfp(struct wfx_vif *wvif, bool capable, bool required=
);
> >> > > +int hif_set_block_ack_policy(struct wfx_vif *wvif,
> >> > > +                          u8 tx_tid_policy, u8 rx_tid_policy);
> >> > > +int hif_set_association_mode(struct wfx_vif *wvif, int ampdu_dens=
ity,
> >> > > +                          bool greenfield, bool short_preamble);
> >> > > +int hif_set_tx_rate_retry_policy(struct wfx_vif *wvif,
> >> > > +                              int policy_index, u8 *rates);
> >> > > +int hif_keep_alive_period(struct wfx_vif *wvif, int period);
> >> > > +int hif_set_arp_ipv4_filter(struct wfx_vif *wvif, int idx, __be32=
 *addr);
> >> > > +int hif_use_multi_tx_conf(struct wfx_dev *wdev, bool enable);
> >> > > +int hif_set_uapsd_info(struct wfx_vif *wvif, unsigned long val);
> >> > > +int hif_erp_use_protection(struct wfx_vif *wvif, bool enable);
> >> > > +int hif_slot_time(struct wfx_vif *wvif, int val);
> >> > > +int hif_wep_default_key_id(struct wfx_vif *wvif, int val);
> >> > > +int hif_rts_threshold(struct wfx_vif *wvif, int val);
> >> > =

> >> > "wfx_" prefix missing from quite a few functions.
> >> =

> >> I didn't know it was mandatory to prefix all the functions with the
> >> same prefix.
> =

> I don't know either if this is mandatory or not, for example I do not
> have any recollection what Linus and other maintainers think of this. I
> just personally think it's good practise to use driver prefix ("wfx_")
> in all non-static functions.
> =

> Any opinions from others? Greg?

For static functions, pick what you want.

For global functions, like this, use a common prefix that indicates the
driver as you are now playing in the global namespace of a 30 million
line project.

> >> With the rule of 80-columns, I think I will have to change a bunch of
> >> code :( .
> >
> > I think that new drivers can use 100 characters per line.
> =

> That's my understanding as well.

Yes, that's fine.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
