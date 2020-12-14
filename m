Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F0EB2D97AE
	for <lists+driverdev-devel@lfdr.de>; Mon, 14 Dec 2020 12:53:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C15E2869E1;
	Mon, 14 Dec 2020 11:53:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id auqqwMg_2ATJ; Mon, 14 Dec 2020 11:53:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5E70686930;
	Mon, 14 Dec 2020 11:53:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C93B01BF42E
 for <devel@linuxdriverproject.org>; Mon, 14 Dec 2020 11:53:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 600688693B
 for <devel@linuxdriverproject.org>; Mon, 14 Dec 2020 11:53:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nR5n6dTDyV1o for <devel@linuxdriverproject.org>;
 Mon, 14 Dec 2020 11:53:08 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from eu-smtp-delivery-151.mimecast.com
 (eu-smtp-delivery-151.mimecast.com [185.58.86.151])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id BFC2B86930
 for <devel@driverdev.osuosl.org>; Mon, 14 Dec 2020 11:53:07 +0000 (UTC)
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-57-NlvEctBAMaCvCybvQIbvtA-1; Mon, 14 Dec 2020 11:53:03 +0000
X-MC-Unique: NlvEctBAMaCvCybvQIbvtA-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Mon, 14 Dec 2020 11:53:04 +0000
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000; 
 Mon, 14 Dec 2020 11:53:04 +0000
From: David Laight <David.Laight@ACULAB.COM>
To: 'Philipp Gerlesberger' <Philipp.Gerlesberger@fau.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH v2 12/12] media: atomisp: Fix LOGICAL_CONTINUATIONS
Thread-Topic: [PATCH v2 12/12] media: atomisp: Fix LOGICAL_CONTINUATIONS
Thread-Index: AQHW0gocnJO7wsTYYEGwNcWFQ1O+9qn2emzA
Date: Mon, 14 Dec 2020 11:53:04 +0000
Message-ID: <4eef67d66b0b48feba474906431daa30@AcuMS.aculab.com>
References: <20201214110156.6152-1-Philipp.Gerlesberger@fau.de>
 <20201214110156.6152-13-Philipp.Gerlesberger@fau.de>
In-Reply-To: <20201214110156.6152-13-Philipp.Gerlesberger@fau.de>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=C51A453 smtp.mailfrom=david.laight@aculab.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: aculab.com
Content-Language: en-US
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "linux-kernel@i4.cs.fau.de" <linux-kernel@i4.cs.fau.de>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "ij72uhux@stud.informatik.uni-erlangen.de"
 <ij72uhux@stud.informatik.uni-erlangen.de>,
 "sakari.ailus@linux.intel.com" <sakari.ailus@linux.intel.com>,
 "mchehab@kernel.org" <mchehab@kernel.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Philipp Gerlesberger
> Sent: 14 December 2020 11:02
>
> Logical continuations should be on the previous line
> 
> Co-developed-by: Andrey Khlopkov <ij72uhux@stud.informatik.uni-erlangen.de>
> Signed-off-by: Andrey Khlopkov <ij72uhux@stud.informatik.uni-erlangen.de>
> Signed-off-by: Philipp Gerlesberger <Philipp.Gerlesberger@fau.de>
> ---
>  drivers/staging/media/atomisp/pci/runtime/queue/src/queue.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/media/atomisp/pci/runtime/queue/src/queue.c
> b/drivers/staging/media/atomisp/pci/runtime/queue/src/queue.c
> index 2f1c2df59f71..7d44070c7114 100644
> --- a/drivers/staging/media/atomisp/pci/runtime/queue/src/queue.c
> +++ b/drivers/staging/media/atomisp/pci/runtime/queue/src/queue.c
> @@ -24,8 +24,8 @@
>   *****************************************************************************/
>  int ia_css_queue_local_init(ia_css_queue_t *qhandle, ia_css_queue_local_t *desc)
>  {
> -	if (NULL == qhandle || NULL == desc
> -	    || NULL == desc->cb_elems || NULL == desc->cb_desc) {
> +	if (NULL == qhandle || NULL == desc ||
> +	    NULL == desc->cb_elems || NULL == desc->cb_desc) {
>  		/* Invalid parameters, return error*/
>  		return -EINVAL;

Get rid of the obnoxious backwards tests and it probably fits in 80 columns.

	if (!qhandle || !desc || !desc->cb_elems || !desc->desc) {
		...

OTOH if it isn't expected that any of these might be NULL just delete
the test.
If they ever are 'accidentally' NULL it is usually easier to debug
the NULL pointer dereference than an obscure error return.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
