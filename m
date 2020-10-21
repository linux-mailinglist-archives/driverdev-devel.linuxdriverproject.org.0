Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 43E1629476B
	for <lists+driverdev-devel@lfdr.de>; Wed, 21 Oct 2020 06:36:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6CD4786A4C;
	Wed, 21 Oct 2020 04:36:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cJqV5tDPp2j6; Wed, 21 Oct 2020 04:36:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 05E6C86A11;
	Wed, 21 Oct 2020 04:36:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9B8031BF315
 for <devel@linuxdriverproject.org>; Wed, 21 Oct 2020 04:36:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8C588869DA
 for <devel@linuxdriverproject.org>; Wed, 21 Oct 2020 04:36:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2A73azATUo-a for <devel@linuxdriverproject.org>;
 Wed, 21 Oct 2020 04:36:24 +0000 (UTC)
X-Greylist: delayed 00:07:19 by SQLgrey-1.7.6
Received: from p3plsmtpa09-09.prod.phx3.secureserver.net
 (p3plsmtpa09-09.prod.phx3.secureserver.net [173.201.193.238])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 16416868F4
 for <devel@driverdev.osuosl.org>; Wed, 21 Oct 2020 04:36:23 +0000 (UTC)
Received: from mail-ot1-f48.google.com ([209.85.210.48])
 by :SMTPAUTH: with ESMTPSA
 id V5kEkeKHWXPCeV5kEkmBoN; Tue, 20 Oct 2020 21:29:03 -0700
X-CMAE-Analysis: v=2.3 cv=f7Y2+96M c=1 sm=1 tr=0
 a=4slhDwrGXrWGs/SUwNzzxQ==:117 a=IkcTkHD0fZMA:10 a=MKtGQD3n3ToA:10
 a=afefHYAZSVUA:10 a=pFd2Zl5z2vwA:10 a=ZZnuYtJkoWoA:10 a=pGLkceISAAAA:8
 a=4RBUngkUAAAA:8 a=1XWaLZrsAAAA:8 a=Wm2QblFjYE37K_-gV7gA:9 a=QEXdDO2ut3YA:10
 a=cDyXFGGuxjcA:10 a=_sbA2Q-Kp09kWB8D3iXc:22
X-SECURESERVER-ACCT: vthakkar@vaishalithakkar.in
Received: by mail-ot1-f48.google.com with SMTP id d28so731878ote.1
 for <devel@driverdev.osuosl.org>; Tue, 20 Oct 2020 21:29:02 -0700 (PDT)
X-Gm-Message-State: AOAM531IbYD6VGZxiF4SLYspVjknCSXGiXSmJiz13NQ4ZoUC148kVtdu
 gUOzjOYXx72DFSvRV+bsgoBehOCcmjDBFxBi+/0=
X-Google-Smtp-Source: ABdhPJyqwDo5yr007ArrQ7melFkto5n+D2aMI6QUYvrfGUrcup4sDBZBhjWF/WDfS9e9HpOMWZ/PGraJfDVAm9tMlSk=
X-Received: by 2002:a9d:1ec2:: with SMTP id n60mr1227974otn.63.1603254542550; 
 Tue, 20 Oct 2020 21:29:02 -0700 (PDT)
MIME-Version: 1.0
References: <20201020182439.43314-1-eafanasova@gmail.com>
In-Reply-To: <20201020182439.43314-1-eafanasova@gmail.com>
From: Vaishali Thakkar <vthakkar@vaishalithakkar.in>
Date: Wed, 21 Oct 2020 09:58:50 +0530
X-Gmail-Original-Message-ID: <CAK-LDbKv0-E9w-LdbwNr8vszm_6cwkwF9ic5eDysC7xETnotNg@mail.gmail.com>
Message-ID: <CAK-LDbKv0-E9w-LdbwNr8vszm_6cwkwF9ic5eDysC7xETnotNg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 1/3] staging/rtl8712: remove extra
 blank lines; fix code alignment
To: Elena Afanasova <eafanasova@gmail.com>
X-CMAE-Envelope: MS4wfGKiARPW9rJbIX8h12qmcLWwPdf47kwAxilwgRCXKXw8fsWpXIHzPcryiEdt0FBw/Tqv7Z3y8q8F2siKCwiZqz5xFHkqJCZr3QFO6oPuYY9/7SWok6XR
 wQTeC6IXnbDNgvsDygXr4FgLL37hN6f8YRIdrk3mDga65M3GIlvaaRlRRNjXG6nGqSByNVv6qE+1XfL8hXCXCRhdIzNftQgfQ+M=
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
 Outreachy <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Oct 21, 2020 at 12:01 AM Elena Afanasova <eafanasova@gmail.com> wrote:
>
> Reported by checkpatch.pl
>
> Signed-off-by: Elena Afanasova <eafanasova@gmail.com>

This patch is fixing 2 different checkpatch warnings. They
should be sent as separate patches. One for removing extra
blank lines, another one for fixing the code alignment.

> ---
>  drivers/staging/rtl8712/rtl871x_recv.h | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>
> diff --git a/drivers/staging/rtl8712/rtl871x_recv.h b/drivers/staging/rtl8712/rtl871x_recv.h
> index e83c256e1474..57a965b9839b 100644
> --- a/drivers/staging/rtl8712/rtl871x_recv.h
> +++ b/drivers/staging/rtl8712/rtl871x_recv.h
> @@ -29,7 +29,6 @@ struct        stainfo_rxcache {
>  #define                PHY_RSSI_SLID_WIN_MAX                   100
>  #define                PHY_LINKQUALITY_SLID_WIN_MAX            20
>
> -
>  struct smooth_rssi_data {
>         u32     elements[100];  /* array to store values */
>         u32     index;          /* index to current array to store */
> @@ -38,7 +37,6 @@ struct smooth_rssi_data {
>  };
>
>  struct rx_pkt_attrib {
> -
>         u8      amsdu;
>         u8      order;
>         u8      qos;
> @@ -129,7 +127,7 @@ union recv_frame *r8712_alloc_recvframe(struct  __queue *pfree_recv_queue);
>  void r8712_free_recvframe(union recv_frame *precvframe,
>                           struct  __queue *pfree_recv_queue);
>  void r8712_free_recvframe_queue(struct  __queue *pframequeue,
> -                                struct  __queue *pfree_recv_queue);
> +                               struct  __queue *pfree_recv_queue);
>  int r8712_wlanhdr_to_ethhdr(union recv_frame *precvframe);
>  int recv_func(struct _adapter *padapter, void *pcontext);
>
> --
> 2.25.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20201020182439.43314-1-eafanasova%40gmail.com.



-- 
Vaishali


-- 
Vaishali
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
