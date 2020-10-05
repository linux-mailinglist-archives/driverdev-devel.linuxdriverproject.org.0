Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D9D7A283F70
	for <lists+driverdev-devel@lfdr.de>; Mon,  5 Oct 2020 21:18:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0716F20507;
	Mon,  5 Oct 2020 19:18:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5VV8OnV6pcM9; Mon,  5 Oct 2020 19:18:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2321A20486;
	Mon,  5 Oct 2020 19:18:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 333D51BF3AF
 for <devel@linuxdriverproject.org>; Mon,  5 Oct 2020 19:18:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 127822040D
 for <devel@linuxdriverproject.org>; Mon,  5 Oct 2020 19:18:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QaW1fNFjs3ey for <devel@linuxdriverproject.org>;
 Mon,  5 Oct 2020 19:18:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 9E46820012
 for <devel@driverdev.osuosl.org>; Mon,  5 Oct 2020 19:18:14 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id d23so5694pll.7
 for <devel@driverdev.osuosl.org>; Mon, 05 Oct 2020 12:18:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3v9XMAoPYBW3DQG8S1vG0ISp7LAFeik4tO7mnWA/PIE=;
 b=Flg1imdKdG4du95+yUiD8rHugdWmz6cDZdnv/sBc3wx8jJOqjfa7uieMvm3riwXyUI
 d404b0MWwm+wMfVIA1reIs4P7RfcgVAqIpujkXFfeGQEYKFlADn4+XkI+2HukATPeqjj
 2eyzcNW5tsvijHild1n+/cAlaRhHeKyu75KtNhSIAkAh88eoo7p7HAJQxh0SbSRxNPSw
 O9mCkSyio2shfaTtsaPjtbxApzM7O79tx8SirEtDb/FvTfqwcoMnaYwxbWALS9PFd0d7
 KrheOFiQ//V0ZFuzS/Zyhige/8QeCpzLB8Glud45L1MBzR04prFwwbB3Gu8AWu5iL204
 v6/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3v9XMAoPYBW3DQG8S1vG0ISp7LAFeik4tO7mnWA/PIE=;
 b=A1g5cdtaGdH/IjNLefPZ4oO2dHESnNItyjCJpC2tFSBz4NKF3oGEsNfFMJUt+gUrvO
 TaGm90mSZIShpbPcGsJByqsmpzezFK3I4dtHX7+OPfNfDIafa3+yWiyOil+Um4EvPcaG
 SQv5qbS46Q57x8qf2ZfYUpY5ayF/wTLOqZH+vVQCbkeQGgTJymeKfAmnqEQsVNnKrvDm
 PPcJ8hmZVNWJiptVLoYD85RgWFrjoxui+wxAFtuum7mxScXWbsZKkOhuE9FT91Y1J7fm
 tiH/Snp20M7AhJQvT1D7a+haT3+9tdTQPT92cC+ltq7QRqg5EmrvTCDKVnHkaC1p7Yhg
 m3dw==
X-Gm-Message-State: AOAM531cfyjUDt8YS8kBCyAOULSPgNDkwqot6qhVAIfqQTSlxOwsi1tn
 XOlaaBMvrUqyp+g3p9Exnmdnochr4t0C//Lm7hs=
X-Google-Smtp-Source: ABdhPJzg/smmDdSNBg0mwczEB7Lzlcc/N8/29nYapgcYl/zwOjuHCvGd9zmnksVlr8dsnxPs/GFCiCSVeZHsW0cr4N8=
X-Received: by 2002:a17:90a:ab0b:: with SMTP id
 m11mr904112pjq.197.1601925494043; 
 Mon, 05 Oct 2020 12:18:14 -0700 (PDT)
MIME-Version: 1.0
References: <20201002233057.74462-1-coiby.xu@gmail.com>
In-Reply-To: <20201002233057.74462-1-coiby.xu@gmail.com>
From: Vaibhav Agarwal <vaibhav.sr@gmail.com>
Date: Tue, 6 Oct 2020 00:47:37 +0530
Message-ID: <CAAs364_NiSJ-mH+v938Mz-qLgDjUsO=7V7FLPo9=Tne63bUxXw@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] staging: greybus: fix warnings about endianness
 detected by sparse
To: Coiby Xu <coiby.xu@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Alex Elder <elder@kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Johan Hovold <johan@kernel.org>, Mark Greer <mgreer@animalcreek.com>,
 "moderated list:GREYBUS SUBSYSTEM" <greybus-dev@lists.linaro.org>,
 Alex Elder <elder@linaro.org>, Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Oct 3, 2020 at 5:01 AM Coiby Xu <coiby.xu@gmail.com> wrote:
>
> This patch fix the following warnings from sparse,
>
> $ make C=2 drivers/staging/greybus/
> drivers/staging/greybus/audio_module.c:222:25: warning: incorrect type in assignment (different base types)
> drivers/staging/greybus/audio_module.c:222:25:    expected restricted __le16 [usertype] data_cport
> drivers/staging/greybus/audio_module.c:222:25:    got unsigned short [usertype] intf_cport_id
> drivers/staging/greybus/audio_topology.c:460:40: warning: restricted __le32 degrades to integer
> drivers/staging/greybus/audio_topology.c:691:41: warning: incorrect type in assignment (different base types)
> drivers/staging/greybus/audio_topology.c:691:41:    expected unsigned int access
> drivers/staging/greybus/audio_topology.c:691:41:    got restricted __le32 [usertype] access
> drivers/staging/greybus/audio_topology.c:746:44: warning: incorrect type in assignment (different base types)
> drivers/staging/greybus/audio_topology.c:746:44:    expected unsigned int
> drivers/staging/greybus/audio_topology.c:746:44:    got restricted __le32
> drivers/staging/greybus/audio_topology.c:748:52: warning: incorrect type in assignment (different base types)
> drivers/staging/greybus/audio_topology.c:748:52:    expected unsigned int
> drivers/staging/greybus/audio_topology.c:748:52:    got restricted __le32
> drivers/staging/greybus/audio_topology.c:802:42: warning: restricted __le32 degrades to integer
> drivers/staging/greybus/audio_topology.c:805:50: warning: incorrect type in assignment (different base types)
> drivers/staging/greybus/audio_topology.c:805:50:    expected restricted __le32
> drivers/staging/greybus/audio_topology.c:805:50:    got unsigned int
> drivers/staging/greybus/audio_topology.c:814:50: warning: restricted __le32 degrades to integer
> drivers/staging/greybus/audio_topology.c:817:58: warning: incorrect type in assignment (different base types)
> drivers/staging/greybus/audio_topology.c:817:58:    expected restricted __le32
> drivers/staging/greybus/audio_topology.c:817:58:    got unsigned int
> drivers/staging/greybus/audio_topology.c:889:25: warning: incorrect type in assignment (different base types)
> drivers/staging/greybus/audio_topology.c:889:25:    expected unsigned int access
> drivers/staging/greybus/audio_topology.c:889:25:    got restricted __le32 [usertype] access
>
> Suggested-by: Dan Carpenter <dan.carpenter@oracle.com>
> Reviewed-by: Dan Carpenter <dan.carpenter@oracle.com>
> Reviewed-by: Alex Elder <elder@linaro.org>
> Signed-off-by: Coiby Xu <coiby.xu@gmail.com>
> ---
Hi Coiby,

Thanks for sharing the patch. Sorry, I could not reply to the v1 series.
Now, I have gone through the patches. Looks good (all 3 patches).

Reviewed-by: Vaibhav Agarwal <vaibhav.sr@gmail.com>

--
Thanks,
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
