Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D10733F72A
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Mar 2021 18:36:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E8F746F97F;
	Wed, 17 Mar 2021 17:36:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FvjTuJxu6wde; Wed, 17 Mar 2021 17:36:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 26B7560673;
	Wed, 17 Mar 2021 17:36:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 71A7C1BF5DF
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 17:35:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6E3E3835F2
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 17:35:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=infradead.org header.b="b9O71g6E";
 dkim=pass (2048-bit key) header.d=infradead.org header.b="AIwl+zpd"
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oEwIC6PUvwar for <devel@linuxdriverproject.org>;
 Wed, 17 Mar 2021 17:35:50 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from desiato.infradead.org (desiato.infradead.org
 [IPv6:2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8A9778309A
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 17:35:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
 :In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:
 Reply-To:Cc:Content-ID:Content-Description;
 bh=e1aFEf0jTKxTqtUnzApuTgt89lxp2sYlb3+/AG+krOQ=; b=b9O71g6EZtn29TDvLNjLqrfBXB
 Tz4KTEnAlUblpUBmLdx0ipbNMkt2zJA0gGAz++gqKdK25ftTVluvYZuMfqujKXwQR4fiImedcmZez
 t/27WRLa9EJ/Y85dGmB9NmcSl6bRfTw27SrZTY6NB9bYUhh/IzIYw7ZGD5xTp0hu5Ogz+9U3ykBEJ
 8+TtX7Yta/1tBZ9b/m3wf4W9RsSVDadlfYkbtu5ANkm9Yk/u9IB6Jp6lAN6IjAIF2r+RRIUA4omYu
 fTvlKPvIJq9p6EdwDldNkj+O5v/X1C08aXdJpo7uY/RPZPPSBtHuQrSePkeM7qMFVJc9To25erQtp
 Uw4BY+Cg==;
Received: from merlin.infradead.org ([2001:8b0:10b:1234::107])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lMa5D-003evf-WB
 for devel@driverdev.osuosl.org; Wed, 17 Mar 2021 17:35:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:
 Reply-To:Cc:Content-ID:Content-Description;
 bh=e1aFEf0jTKxTqtUnzApuTgt89lxp2sYlb3+/AG+krOQ=; b=AIwl+zpdAmRyINLbrAL3NLiZh6
 NBSupKWdmRTFqGybhiA5sUdSBiumWZeXoXF//bG4ccvUifZOH1a9V5/KBuWSCXblr7ebAjz9eMHs0
 1yEX4EtGzlnmI04TfXe+oTHnmRyOHdOjq/dgXXDhcn+c3AbAIVPbW980UCdjsdy0hhJ+TxS8qRA6c
 OR0Kf0ybnN/5SCnl5xRvddPGbRtZWTVTaveIFK8Ww2yzPQ7Xm0H8nx/GZVF3JuDdbDmVkZOcrUL3I
 agFU3kgmbnPxnBJGAnw5q6r5pLsA9wuVx6iGHJj4eD9LvNf9Sxrg5FJnTSBCLfCKXXoDLFPEgBziF
 KgMJ9+yw==;
Received: from [2601:1c0:6280:3f0::9757]
 by merlin.infradead.org with esmtpsa (Exim 4.94 #2 (Red Hat Linux))
 id 1lMa50-001fWf-4I; Wed, 17 Mar 2021 17:35:35 +0000
Subject: Re: [PATCH] staging: wimax: i2400m: Mundane typo fix in the file
 driver.c
To: Bhaskar Chowdhury <unixbhaskar@gmail.com>, gregkh@linuxfoundation.org,
 colin.king@canonical.com, davem@davemloft.net, johannes@sipsolutions.net,
 arnd@arndb.de, lee.jones@linaro.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
References: <20210317092624.1138207-1-unixbhaskar@gmail.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <971c14bd-e755-d1cf-b518-c889e5348f11@infradead.org>
Date: Wed, 17 Mar 2021 10:35:30 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <20210317092624.1138207-1-unixbhaskar@gmail.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 3/17/21 2:26 AM, Bhaskar Chowdhury wrote:
> 
> s/procesing/processing/
> 
> Signed-off-by: Bhaskar Chowdhury <unixbhaskar@gmail.com>

Acked-by: Randy Dunlap <rdunlap@infradead.org>

> ---
>  drivers/staging/wimax/i2400m/driver.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/wimax/i2400m/driver.c b/drivers/staging/wimax/i2400m/driver.c
> index f5186458bb3d..8091106212f9 100644
> --- a/drivers/staging/wimax/i2400m/driver.c
> +++ b/drivers/staging/wimax/i2400m/driver.c
> @@ -96,7 +96,7 @@ MODULE_PARM_DESC(barkers,
>   *
>   * This function just verifies that the header declaration and the
>   * payload are consistent and then deals with it, either forwarding it
> - * to the device or procesing it locally.
> + * to the device or processing it locally.
>   *
>   * In the i2400m, messages are basically commands that will carry an
>   * ack, so we use i2400m_msg_to_dev() and then deliver the ack back to
> --


-- 
~Randy

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
