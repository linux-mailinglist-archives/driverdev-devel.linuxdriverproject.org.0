Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9307A22D796
	for <lists+driverdev-devel@lfdr.de>; Sat, 25 Jul 2020 14:51:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6472488A4F;
	Sat, 25 Jul 2020 12:51:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pFc-cedmBpqP; Sat, 25 Jul 2020 12:51:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id CED5388A07;
	Sat, 25 Jul 2020 12:51:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BEE031BF36C
 for <devel@linuxdriverproject.org>; Sat, 25 Jul 2020 12:51:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B2EA92051C
 for <devel@linuxdriverproject.org>; Sat, 25 Jul 2020 12:51:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8CsVwWBiGRP6 for <devel@linuxdriverproject.org>;
 Sat, 25 Jul 2020 12:50:58 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from rere.qmqm.pl (rere.qmqm.pl [91.227.64.183])
 by silver.osuosl.org (Postfix) with ESMTPS id 5043720528
 for <devel@driverdev.osuosl.org>; Sat, 25 Jul 2020 12:50:58 +0000 (UTC)
Received: from remote.user (localhost [127.0.0.1])
 by rere.qmqm.pl (Postfix) with ESMTPSA id 4BDQsq3DH3z4D;
 Sat, 25 Jul 2020 14:50:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=rere.qmqm.pl; s=1;
 t=1595681456; bh=lOrzlYaUy5M9mACsVH7i0G6RcZ9CCXP8CXf0i8hOFi4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=eEtye1y8BrE5ycM2NcC5NcDjpHnETN6U6d+PeTEF30kF0HLofs8hEM7Ho4Q1qZG50
 RHk05JxX5XLQ5wuGOCy7+KOgfv6P2c7E1qb3XvokNAIayz8zXE+6vS+zyIL3zHGrog
 iYI9yHuacTAKuadM4T6gr7p+ntadxLB9VTfpmKJc5f3i69bXRDTrvf8uRucigeQt6L
 0RLRTDC21Kf4OMv3VH7wAOIgA1FnRbwruR9PIkee2zzVeNLNhD68jSzqm3peqbMisf
 J7xVYZTTiPfsGXMNkgDMUvpTTTftq9h7rq7q35BPWZM0WraeAObSmM17WA1aZtX8cm
 zztyEVWn2KT7A==
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.102.3 at mail
Date: Sat, 25 Jul 2020 14:50:54 +0200
From: =?iso-8859-2?Q?Micha=B3_Miros=B3aw?= <mirq-linux@rere.qmqm.pl>
To: Rohit K Bharadwaj <bharadwaj.rohit8@gmail.com>
Subject: Re: [PATCH v4] staging: nvec: change usage of slave to secondary
Message-ID: <20200725125054.GB18633@qmqm.qmqm.pl>
References: <20200724043633.7755-1-bharadwaj.rohit8@gmail.com>
 <20200725062938.15388-1-bharadwaj.rohit8@gmail.com>
 <20200725120146.GB26689@qmqm.qmqm.pl>
 <5597e949-b93c-9133-efdb-9714637f9ebc@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5597e949-b93c-9133-efdb-9714637f9ebc@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
 Dan Carpenter <dan.carpenter@oracle.com>, p.zabel@pengutronix.de,
 linux-tegra@vger.kernel.org, ac100@lists.launchpad.net
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Jul 25, 2020 at 06:01:19PM +0530, Rohit K Bharadwaj wrote:
> On 25/07/20 5:31 pm, Micha=B3 Miros=B3aw wrote:
> > On Sat, Jul 25, 2020 at 11:59:39AM +0530, Rohit K Bharadwaj wrote:
> >> changed usage of slave (which is deprecated) to secondary without brea=
king the driver
> > =

> > The relevant I2C and SMBus standards use master/slave terminology. Why =
are
> > you changing the names to something unfamiliar?
> > =

> > If the reason are the recent coding-style changes, then please note they
> > are about avoiding introducing *NEW* uses of the specific words and not
> > about blindly replacing existing occurrences.
> =

> I'm really sorry sir, I didn't knew about this, yes the reason for my cha=
nge is according to the script checkpatch.pl to suit the coding style, I wo=
uld try to fix some other coding style related issues if this patch seems t=
o be a bad idea.

I didn't know checkpatch does this (it doesn't in current Linus' master
tree).  I can see there is a commit in next adding this, but seems that
it uses a test far from the original coding-style wording...

Best Regards
Micha=B3=A0Miros=B3aw
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
