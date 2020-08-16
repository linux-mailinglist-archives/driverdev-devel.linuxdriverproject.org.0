Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 87DD52458D2
	for <lists+driverdev-devel@lfdr.de>; Sun, 16 Aug 2020 19:35:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D5C4B86049;
	Sun, 16 Aug 2020 17:35:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PG0bpSYm4RyO; Sun, 16 Aug 2020 17:35:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C210A8600D;
	Sun, 16 Aug 2020 17:35:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 103B61BF410
 for <devel@linuxdriverproject.org>; Sun, 16 Aug 2020 17:35:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0CD0186049
 for <devel@linuxdriverproject.org>; Sun, 16 Aug 2020 17:35:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0Uc4wQmGE48R for <devel@linuxdriverproject.org>;
 Sun, 16 Aug 2020 17:35:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 40C9D8600D
 for <devel@driverdev.osuosl.org>; Sun, 16 Aug 2020 17:35:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=DLYaepasdAjeb5hNRfAs0VZ5YHZCwzeLettMOwN8AHI=; b=aEz9nrCheqHQE/gVFCLAm73c0w
 qcaCdnPks7A+2ILLxH52KbdpfYb7q+K+XZKNvh7NsFhlVjHdPfXoLvWF4xDYFljU25tS8Ow1s3MJb
 6TKgQEdAskl7OnHszwhJ+4pkbB0lArHPkO8Q/OrtGXuB+/vpEfOnzNyudK+GH6TPHnCalvTucpfsn
 ZipVfQ9jPM2ckon2gMi6uJvSnMFJn6KFmOzhKeEW9NHiT8UV6Ddr8Tc1a3h/kK8JutsrmMaBpRuI7
 /XsGPt7ejMW1nTH7JGed3ih9zy9f5tbdf+wqPTArC/e4+rlgiKw02Fiizq0SjL8iptJvZ4lM/TOeG
 Y9ZzpC1Q==;
Received: from [2601:1c0:6280:3f0::19c2]
 by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k7MYa-00088L-Cr; Sun, 16 Aug 2020 17:34:57 +0000
Subject: Re: [PATCH 3/3] staging: androind: Convert BUG() to WARN()
To: Tomer Samara <tomersamara98@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <cover.1597597955.git.tomersamara98@gmail.com>
 <8df6206000524d4a0043a7a1df97b2be2d277995.1597597955.git.tomersamara98@gmail.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <df5e2206-51be-3fc7-ddc2-6f318a8e5a1a@infradead.org>
Date: Sun, 16 Aug 2020 10:34:50 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <8df6206000524d4a0043a7a1df97b2be2d277995.1597597955.git.tomersamara98@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Todd Kjos <tkjos@android.com>,
 Martijn Coenen <maco@android.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Joel Fernandes <joel@joelfernandes.org>,
 Riley Andrews <riandrews@android.com>,
 =?UTF-8?Q?Arve_Hj=c3=b8nnev=c3=a5g?= <arve@android.com>,
 Hridya Valsaraju <hridya@google.com>, Laura Abbott <labbott@redhat.com>,
 Suren Baghdasaryan <surenb@google.com>, Sumit Semwal <sumit.semwal@linaro.org>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 8/16/20 10:22 AM, Tomer Samara wrote:
> replace BUG() with WARN() at ion_sytem_heap.c, this
> fix the following checkpatch issue:
> Avoid crashing the kernel - try using WARN_ON &
> recovery code ratherthan BUG() or BUG_ON().
> 
> Signed-off-by: Tomer Samara <tomersamara98@gmail.com>
> ---
>  drivers/staging/android/ion/ion_system_heap.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/android/ion/ion_system_heap.c b/drivers/staging/android/ion/ion_system_heap.c
> index eac0632ab4e8..37065a59ca69 100644
> --- a/drivers/staging/android/ion/ion_system_heap.c
> +++ b/drivers/staging/android/ion/ion_system_heap.c
> @@ -30,7 +30,8 @@ static int order_to_index(unsigned int order)
>  	for (i = 0; i < NUM_ORDERS; i++)
>  		if (order == orders[i])
>  			return i;
> -	BUG();
> +
> +	WARN(1, "%s: Did not found index to order %d", __FUNCTION__, order);
>  	return -1;
>  }

Hi,
Did you look at what happens when order_to_index() returns -1
to its callers?


Also: fix spelling in Subjects: android and BUG/BUG_ON

-- 
~Randy

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
