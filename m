Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C7E2031261D
	for <lists+driverdev-devel@lfdr.de>; Sun,  7 Feb 2021 17:48:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 87A2C20446;
	Sun,  7 Feb 2021 16:48:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id K-oTrVVkZQQO; Sun,  7 Feb 2021 16:48:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 050A22040E;
	Sun,  7 Feb 2021 16:48:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DE6871BF334
 for <devel@linuxdriverproject.org>; Sun,  7 Feb 2021 16:48:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id DAC2384B91
 for <devel@linuxdriverproject.org>; Sun,  7 Feb 2021 16:48:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1rNomnHS0OOQ for <devel@linuxdriverproject.org>;
 Sun,  7 Feb 2021 16:48:42 +0000 (UTC)
X-Greylist: delayed 01:23:07 by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0164.hostedemail.com
 [216.40.44.164])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E7B8584ABB
 for <devel@driverdev.osuosl.org>; Sun,  7 Feb 2021 16:48:41 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave05.hostedemail.com (Postfix) with ESMTP id BC11818016C93
 for <devel@driverdev.osuosl.org>; Sun,  7 Feb 2021 16:31:36 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay05.hostedemail.com (Postfix) with ESMTP id 1333C18029123;
 Sun,  7 Feb 2021 16:31:34 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:69:355:379:599:800:960:973:988:989:1260:1261:1277:1311:1313:1314:1345:1359:1381:1437:1515:1516:1518:1534:1543:1593:1594:1711:1730:1747:1777:1792:2393:2559:2562:2828:3138:3139:3140:3141:3142:3355:3622:3865:3866:3867:3868:4321:4605:5007:7514:7652:8603:10004:10400:10848:11026:11232:11658:11783:11914:12043:12048:12296:12297:12438:12555:12740:12895:13255:13439:13894:14181:14659:14721:21080:21433:21451:21611:21627:21990:30012:30051:30054:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:1, LUA_SUMMARY:none
X-HE-Tag: owl08_28053bd275f7
X-Filterd-Recvd-Size: 4600
Received: from [192.168.1.159] (unknown [47.151.137.21])
 (Authenticated sender: joe@perches.com)
 by omf08.hostedemail.com (Postfix) with ESMTPA;
 Sun,  7 Feb 2021 16:31:32 +0000 (UTC)
Message-ID: <e9ecbee6d8c076fec8d2814b744f991c69a29dec.camel@perches.com>
Subject: Re: [PATCH] staging: gasket: fix indentation and lines ending with
 open parenthesis
From: Joe Perches <joe@perches.com>
To: Mahak Gupta <gmahak1@gmail.com>, linux-kernel@vger.kernel.org, 
 devel@driverdev.osuosl.org, gregkh@linuxfoundation.org, rcy@google.com, 
 benchan@chromium.org, toddpoynor@google.com, rspringer@google.com
Date: Sun, 07 Feb 2021 08:31:31 -0800
In-Reply-To: <20210207140928.11029-1-gmahak1@gmail.com>
References: <20210207140928.11029-1-gmahak1@gmail.com>
User-Agent: Evolution 3.38.1-1 
MIME-Version: 1.0
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, 2021-02-07 at 19:39 +0530, Mahak Gupta wrote:
> This patch fixes warnings of 'checkpatch.pl'. According to
> Linux coding guidelines, code should be aligned properly to
> match with open parenthesis and lines should not end with
> open parenthesis.
> =

> Signed-off-by: Mahak Gupta <gmahak1@gmail.com>
> ---
> =A0drivers/staging/gasket/gasket_ioctl.c | 18 ++++++++----------
> =A01 file changed, 8 insertions(+), 10 deletions(-)
> =

> diff --git a/drivers/staging/gasket/gasket_ioctl.c b/drivers/staging/gask=
et/gasket_ioctl.c
> index e3047d36d8db..a966231bad42 100644
> --- a/drivers/staging/gasket/gasket_ioctl.c
> +++ b/drivers/staging/gasket/gasket_ioctl.c
> @@ -40,7 +40,7 @@ static int gasket_set_event_fd(struct gasket_dev *gaske=
t_dev,
> =A0
> =

> =A0/* Read the size of the page table. */
> =A0static int gasket_read_page_table_size(struct gasket_dev *gasket_dev,
> -	struct gasket_page_table_ioctl __user *argp)
> +				       struct gasket_page_table_ioctl __user *argp)
> =A0{
> =A0	int ret =3D 0;
> =A0	struct gasket_page_table_ioctl ibuf;
> @@ -51,8 +51,7 @@ static int gasket_read_page_table_size(struct gasket_de=
v *gasket_dev,
> =A0	if (ibuf.page_table_index >=3D gasket_dev->num_page_tables)
> =A0		return -EFAULT;
> =A0
> =

> -	ibuf.size =3D gasket_page_table_num_entries(
> -		gasket_dev->page_table[ibuf.page_table_index]);
> +	ibuf.size =3D gasket_page_table_num_entries(gasket_dev->page_table[ibuf=
.page_table_index]);
> =A0
> =

> =A0	trace_gasket_ioctl_page_table_data(ibuf.page_table_index, ibuf.size,
> =A0					   ibuf.host_address,
> @@ -66,7 +65,7 @@ static int gasket_read_page_table_size(struct gasket_de=
v *gasket_dev,
> =A0
> =

> =A0/* Read the size of the simple page table. */
> =A0static int gasket_read_simple_page_table_size(struct gasket_dev *gaske=
t_dev,
> -	struct gasket_page_table_ioctl __user *argp)
> +					      struct gasket_page_table_ioctl __user *argp)
> =A0{
> =A0	int ret =3D 0;
> =A0	struct gasket_page_table_ioctl ibuf;
> @@ -92,7 +91,7 @@ static int gasket_read_simple_page_table_size(struct ga=
sket_dev *gasket_dev,
> =A0
> =

> =A0/* Set the boundary between the simple and extended page tables. */
> =A0static int gasket_partition_page_table(struct gasket_dev *gasket_dev,
> -	struct gasket_page_table_ioctl __user *argp)
> +				       struct gasket_page_table_ioctl __user *argp)
> =A0{
> =A0	int ret;
> =A0	struct gasket_page_table_ioctl ibuf;
> @@ -107,8 +106,8 @@ static int gasket_partition_page_table(struct gasket_=
dev *gasket_dev,
> =A0
> =

> =A0	if (ibuf.page_table_index >=3D gasket_dev->num_page_tables)
> =A0		return -EFAULT;
> -	max_page_table_size =3D gasket_page_table_max_size(
> -		gasket_dev->page_table[ibuf.page_table_index]);
> +	max_page_table_size =3D gasket_page_table_max_size
> +		(gasket_dev->page_table[ibuf.page_table_index]);
> =A0
> =

> =A0	if (ibuf.size > max_page_table_size) {
> =A0		dev_dbg(gasket_dev->dev,
> @@ -119,8 +118,7 @@ static int gasket_partition_page_table(struct gasket_=
dev *gasket_dev,
> =A0
> =

> =A0	mutex_lock(&gasket_dev->mutex);
> =A0
> =

> -	ret =3D gasket_page_table_partition(
> -		gasket_dev->page_table[ibuf.page_table_index], ibuf.size);
> +	ret =3D gasket_page_table_partition(gasket_dev->page_table[ibuf.page_ta=
ble_index], ibuf.size);
> =A0	mutex_unlock(&gasket_dev->mutex);
> =A0
> =

> =A0	return ret;
> @@ -183,7 +181,7 @@ static int gasket_unmap_buffers(struct gasket_dev *ga=
sket_dev,
> =A0=A0* corresponding memory.
> =A0=A0*/
> =A0static int gasket_config_coherent_allocator(struct gasket_dev *gasket_=
dev,
> -	struct gasket_coherent_alloc_config_ioctl __user *argp)
> +					    struct gasket_coherent_alloc_config_ioctl __user *argp)
> =A0{
> =A0	int ret;
> =A0	struct gasket_coherent_alloc_config_ioctl ibuf;


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
