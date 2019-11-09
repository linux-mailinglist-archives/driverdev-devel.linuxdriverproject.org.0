Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F4F0F5E39
	for <lists+driverdev-devel@lfdr.de>; Sat,  9 Nov 2019 10:19:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E7DD1880D4;
	Sat,  9 Nov 2019 09:19:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EIGR2MILePz6; Sat,  9 Nov 2019 09:19:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 296188807C;
	Sat,  9 Nov 2019 09:19:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3060E1BF2F7
 for <devel@linuxdriverproject.org>; Sat,  9 Nov 2019 09:19:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2BBFD87430
 for <devel@linuxdriverproject.org>; Sat,  9 Nov 2019 09:19:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id l0uFj532s-dV for <devel@linuxdriverproject.org>;
 Sat,  9 Nov 2019 09:19:21 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from ZenIV.linux.org.uk (zeniv.linux.org.uk [195.92.253.2])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A52A3871E0
 for <devel@driverdev.osuosl.org>; Sat,  9 Nov 2019 09:19:21 +0000 (UTC)
Received: from viro by ZenIV.linux.org.uk with local (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1iTMtl-0001iB-NT; Sat, 09 Nov 2019 09:19:13 +0000
Date: Sat, 9 Nov 2019 09:19:13 +0000
From: Al Viro <viro@zeniv.linux.org.uk>
To: Jules Irenge <jbi.octave@gmail.com>
Subject: Re: [PATCH] staging: wfx: add gcc extension __force cast
Message-ID: <20191109091913.GV26530@ZenIV.linux.org.uk>
References: <20191108233837.33378-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191108233837.33378-1-jbi.octave@gmail.com>
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

On Fri, Nov 08, 2019 at 11:38:37PM +0000, Jules Irenge wrote:
> Add gcc extension __force and __le32 cast to fix warning issued by Sparse tool."warning: cast to restricted __le32"
>
> Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> ---
>  drivers/staging/wfx/debug.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/wfx/debug.c b/drivers/staging/wfx/debug.c
> index 0a9ca109039c..aa7b2dd691b9 100644
> --- a/drivers/staging/wfx/debug.c
> +++ b/drivers/staging/wfx/debug.c
> @@ -72,7 +72,7 @@ static int wfx_counters_show(struct seq_file *seq, void *v)
>  		return -EIO;
>  
>  #define PUT_COUNTER(name) \
> -	seq_printf(seq, "%24s %d\n", #name ":", le32_to_cpu(counters.count_##name))
> +	seq_printf(seq, "%24s %d\n", #name ":", le32_to_cpu((__force __le32)(counters.count_##name)))

NAK.  force-cast (and it's not a gcc extension, BTW - it's sparse) is basically
"I know better; the code is right, so STFU already".  *IF* counters.count_...
is really little-endian 32bit, then why isn't it declared that way?  And if
it's host-endian, you've just papered over a real bug here.

As a general rule "fix" doesn't mean "tell it to shut up"...
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
