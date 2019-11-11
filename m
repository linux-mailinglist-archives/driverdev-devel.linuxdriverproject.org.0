Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 93B55F8352
	for <lists+driverdev-devel@lfdr.de>; Tue, 12 Nov 2019 00:17:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4B1FE22640;
	Mon, 11 Nov 2019 23:17:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vij8PMWfg2LX; Mon, 11 Nov 2019 23:17:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 24B5621FAC;
	Mon, 11 Nov 2019 23:17:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DCF0C1BF2C4
 for <devel@linuxdriverproject.org>; Mon, 11 Nov 2019 23:17:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D911721FAD
 for <devel@linuxdriverproject.org>; Mon, 11 Nov 2019 23:17:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 040xr1BH1HkZ for <devel@linuxdriverproject.org>;
 Mon, 11 Nov 2019 23:17:09 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from ZenIV.linux.org.uk (zeniv.linux.org.uk [195.92.253.2])
 by silver.osuosl.org (Postfix) with ESMTPS id 476D821FAC
 for <devel@driverdev.osuosl.org>; Mon, 11 Nov 2019 23:17:09 +0000 (UTC)
Received: from viro by ZenIV.linux.org.uk with local (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1iUIvb-0006lL-JH; Mon, 11 Nov 2019 23:16:59 +0000
Date: Mon, 11 Nov 2019 23:16:59 +0000
From: Al Viro <viro@zeniv.linux.org.uk>
To: Jules Irenge <jbi.octave@gmail.com>
Subject: Re: [PATCH] staging: wfx: add gcc extension __force cast
Message-ID: <20191111231659.GA22837@ZenIV.linux.org.uk>
References: <20191108233837.33378-1-jbi.octave@gmail.com>
 <20191109091913.GV26530@ZenIV.linux.org.uk>
 <alpine.LFD.2.21.1911111347380.226731@ninjahub.org>
 <20191111202852.GX26530@ZenIV.linux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191111202852.GX26530@ZenIV.linux.org.uk>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 Boqun.Feng@microsoft.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Nov 11, 2019 at 08:28:52PM +0000, Al Viro wrote:

> So it smells like a remote buffer overrun, little-endian or not.
> And at that point I would start looking for driver original authors with
> some rather pointed questions about the validation of data and lack
> thereof.
> 
> BTW, if incoming packets are fixed-endian, I would expect more bugs on
> big-endian hosts - wfx_tx_confirm_cb() does things like
>                 tx_info->status.tx_time =
>                 arg->media_delay - arg->tx_queue_delay;
> with media_delay and tx_queue_delay both being 32bit fields in the
> incoming packet.  So another question to the authors (or documentation,
> or direct experiments) is what endianness do various fields in the incoming
> data have.  We can try and guess, but...

More fun:
int hif_read_mib(struct wfx_dev *wdev, int vif_id, u16 mib_id, void *val, size_t val_len)
{
        int ret;
        struct hif_msg *hif;
        int buf_len = sizeof(struct hif_cnf_read_mib) + val_len;
        struct hif_req_read_mib *body = wfx_alloc_hif(sizeof(*body), &hif);
        struct hif_cnf_read_mib *reply = kmalloc(buf_len, GFP_KERNEL);

OK, allocated request and reply buffers, by the look of it; request one
being struct hif_msg with struct hif_req_read_mib for payload
and reply - struct hif_cnf_read_mib {
        uint32_t   status;
        uint16_t   mib_id;
        uint16_t   length;
        uint8_t    mib_data[];
} with val_len bytes in mib_data.

        body->mib_id = cpu_to_le16(mib_id);
        wfx_fill_header(hif, vif_id, HIF_REQ_ID_READ_MIB, sizeof(*body));

Filled request, {.len = cpu_to_le16(4 + 4),
		 .id = HIF_REQ_ID_READ_MIB,
		 .interface = vif_id,
		 .body = {
			.mib_id = cpu_to_le16(mib_id)
		}
	}
Note that mib_id is host-endian here; what we send is little-endian.

        ret = wfx_cmd_send(wdev, hif, reply, buf_len, false);
send it, get reply

        if (!ret && mib_id != reply->mib_id) {
Wha...?  Now we are comparing two bytes at offset 4 into reply with a host-endian
value?  Oh, well...

                dev_warn(wdev->dev, "%s: confirmation mismatch request\n", __func__);
                ret = -EIO;
        }
        if (ret == -ENOMEM)
                dev_err(wdev->dev, "buffer is too small to receive %s (%zu < %d)\n",
                        get_mib_name(mib_id), val_len, reply->length);
        if (!ret)
                memcpy(val, &reply->mib_data, reply->length);
What.  The.  Hell?

We are copying data from the reply.  Into caller-supplied object.
With length taken from the same reply and no validation even
attempted?  Not even "um, maybe we shouldn't copy more than the caller
told us to copy, especially since that's as much as there is in the
source of that memcpy"?

And that's besides the endianness questions.  Note that getting the
endianness wrong here is just about certain to blow up - small value
will be misinterpreted by factor of 256.

In any case, even if this is talking to firmware on a card, that's
an unhealthy degree of trust, especially since the same function
does consider the possibility of bogus replies.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
