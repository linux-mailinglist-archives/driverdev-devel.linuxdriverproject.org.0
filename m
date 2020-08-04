Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 547F523B492
	for <lists+driverdev-devel@lfdr.de>; Tue,  4 Aug 2020 07:47:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7319E85DFC;
	Tue,  4 Aug 2020 05:47:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id K4ZpiD8RGibX; Tue,  4 Aug 2020 05:47:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C7DB285B5B;
	Tue,  4 Aug 2020 05:47:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A44F41BF2BD
 for <devel@linuxdriverproject.org>; Tue,  4 Aug 2020 05:47:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9F7E08781C
 for <devel@linuxdriverproject.org>; Tue,  4 Aug 2020 05:47:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EmKuNAKaslXm for <devel@linuxdriverproject.org>;
 Tue,  4 Aug 2020 05:47:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id BCBCC87816
 for <devel@driverdev.osuosl.org>; Tue,  4 Aug 2020 05:47:32 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id h12so10127508pgf.7
 for <devel@driverdev.osuosl.org>; Mon, 03 Aug 2020 22:47:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=vDqLDzenSWHFK8n0k98ye2lU5LkLmPsSvSRCb9qxZYw=;
 b=hVuoAigv2raGWMd83qJY6Xz7QDJMBlSMXKKSrBXoHU9m3M17SJ0c9uH6OmVJvDEF5N
 x4m6SqByvLXKRZXo592ojSYyEtM/vSn16TObpqVzepkkIa5oFHVouIlAZqGrC0iKtFxu
 n5JwBYVxv4i6Pp9FKOi27oNl62DBwhQC7jnKDiTyebSGmiFCJi/zvS8hrNAyQA6eVmqu
 u2i1M8JJ9VLoIo09Q3Op77rt3rhwbo99d+/C0DO7FHVT1AZReRC7RLVBHnDwX9uV6JXf
 duyoVekZpyrBIMsHNlVf2DbTqgD3gGzZqciEayJsPAYsloT+PjnPk1YLnlcFFSbHBedh
 iK+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=vDqLDzenSWHFK8n0k98ye2lU5LkLmPsSvSRCb9qxZYw=;
 b=h8LRNRaj6yiWoN+aLkw4m99LGdDMPXdGJ71oxW/1lzsAqMkTL5gZ3f7TNS7xS+HvcC
 IvG8M0AIbDSXdNg2W5aBgYXK8myAvjUFC2V/J7PeBbxt2aLZGYncGp+0ww9LGN3ca/im
 66Cok6QQVlGNtF4zMKlfQHP3KLbONpSiQw7dbmAfZmXgQ+hTjEsMKzpDX7bIWVFgJr9B
 PnJ4NgGqv0g+uKITt1gmAC7uo4TdUJsKfl1Iwg9HDg/ucbauX0RBFphyzSMo9rEzHyLt
 x3NVtB6zhfuV53sC3Km7UNWvDXG3hDfa0PdvX733UhZhVlsielc7k2urUE+PeGeZ5r3E
 AOfg==
X-Gm-Message-State: AOAM532S/Eq8rAyXPVWFLb9Q07BTPwFzbjwUzOJVmbGThNYlC3c73C/Y
 r3GpFfpp58bUP+XD+YqznlNfhg==
X-Google-Smtp-Source: ABdhPJypAAH2b4OuHX0Wo/y3QyqH1t6HOyEPeMQOxwksBRX1krFfIabU82XdsK7AvSB1E6Vh2xzU9A==
X-Received: by 2002:a63:210c:: with SMTP id h12mr17617691pgh.152.1596520052288; 
 Mon, 03 Aug 2020 22:47:32 -0700 (PDT)
Received: from localhost ([122.162.244.227])
 by smtp.gmail.com with ESMTPSA id r7sm19970036pfl.186.2020.08.03.22.47.30
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 03 Aug 2020 22:47:31 -0700 (PDT)
Date: Tue, 4 Aug 2020 11:17:28 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Dongdong Yang <contribute.kernel@gmail.com>
Subject: Re: [PATCH v3] Provide USF for the portable equipment.
Message-ID: <20200804054728.ojudxu5fmd54lar5@vireshk-mac-ubuntu>
References: <cover.1596464894.git.yangdongdong@xiaomi.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1596464894.git.yangdongdong@xiaomi.com>
User-Agent: NeoMutt/20170609 (1.8.3)
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
Cc: juri.lelli@redhat.com, peterz@infradead.org, bsegall@google.com,
 gulinghua@xiaomi.com, duhui@xiaomi.com, rocking@linux.alibaba.com,
 devel@driverdev.osuosl.org, vincent.guittot@linaro.org, tanggeliang@xiaomi.com,
 mingo@redhat.com, yangdongdong@xiaomi.com, mgorman@suse.de,
 linux-pm@vger.kernel.org, rostedt@goodmis.org, fengwei@xiaomi.com,
 taojun@xiaomi.com, dietmar.eggemann@arm.com, huangqiwu@xiaomi.com,
 gregkh@linuxfoundation.org, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 zhangguoquan@xiaomi.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 03-08-20, 22:31, Dongdong Yang wrote:
> From: Dongdong Yang <yangdongdong@xiaomi.com>
> =

> This patch provides USF(User Sensitive Feedback factor) auxiliary
> cpufreq governor to support high level layer sysfs inodes setting
> for utils adjustment purpose from the identified scenario on portable
> equipment. Because the power consumption and UI response are more cared
> for by portable equipment=A0users. And the "screen off" status stands for
> no request from the user, however, the kernel is still expected to
> notify the user in time on modem, network or powerkey events occur. USF
> provides "sched_usf_non_ux_r" sysfs inode to cut down the utils from
> user space tasks according to high level scenario. In addition, it
> usually hints more cpufreq demand that the preemptive counts of the
> tasks on the cpu burst and over the user expecting completed time such
> as the ratio sysctl_sched_latency to sysctl_sched_min_granularity on
> "screen on" status, which more likely with more UI. The sysfs inodes
> "sched_usf_up_l0_r" and "sched_usf_down_r" have been provided to adjust
> the utils according to high level identified scenario to alloc the
> cpufreq in time.
> =

> Changes in v3
>   - Move usf.c to kernel/sched.
>   - Remove trace_printk and debugfs.
>   - Add document draft.
>   - Update comments.
> =

> Changes in v2
>   - Add adjust_task_pred_set switch.
>   - Move adjust_task_pred_demand declaration into sched.h
>   - Update comments.

Sending updated patchset for this isn't going to help you my friend. You ne=
ed
people (maintainers) to agree on the idea here first. The patch can be
beautified later if required once the idea is agreed upon. I saw Peter alre=
ady
gave his NAK to it during V1. You need to discuss with people here to see w=
hy
they don't like it first and as Greg said earlier, this should not go to st=
aging
at all if it ever makes it mainline.

The more versions you send now (without proper discussions first), the hard=
er it
will be for this stuff to get merged upstream.

-- =

viresh
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
