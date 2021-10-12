Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48F4342AB24
	for <lists+driverdev-devel@lfdr.de>; Tue, 12 Oct 2021 19:50:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9F75040427;
	Tue, 12 Oct 2021 17:50:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xVmlNfwUnMFl; Tue, 12 Oct 2021 17:50:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 578FB40407;
	Tue, 12 Oct 2021 17:50:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 50E1C1BF9B9
 for <devel@linuxdriverproject.org>; Tue, 12 Oct 2021 17:49:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3F6EF60730
 for <devel@linuxdriverproject.org>; Tue, 12 Oct 2021 17:49:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=yahoo.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KIlaTI3kjQzc for <devel@linuxdriverproject.org>;
 Tue, 12 Oct 2021 17:49:44 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from sonic309-27.consmr.mail.ne1.yahoo.com
 (sonic309-27.consmr.mail.ne1.yahoo.com [66.163.184.153])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A9C1960678
 for <devel@driverdev.osuosl.org>; Tue, 12 Oct 2021 17:49:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1634060983; bh=UFvVN4qjWuRnhINMi/zNNZL0I1lm3mTk3i2cSTtLdGQ=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From:Subject:Reply-To;
 b=nclIy8KdrUyeGJx+P49izUJ8F0WReHm3TzI940QIWxgpMCFQXHa/u75+NcvOEyXopgQ1ldIjLRuWw3aA447ZtLTL73C8+jDW1ByEJWpZ/6oM5reOzuGf1iDtMvpjABFoL/i2FL/jIVSUWe2bhz3RVO/EY4IxViHynks8rxul8mZGjCiJCj1gz4Pnbn25JLjaXkzgmHWncXGkc52IogH/PtkCp4GVU6gl19zyqKLquHGk/Al8EVVL3Lr8vYsu6y0NeDK3GzxKEPs/tz76E8n4bEcCyywY+MZ4PsG//RmgDLAC7KWoJkude23QRRf4tNMYdF7rnorW8K9jQ4e7m4/nPg==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1634060983; bh=eLl0VJ8l8UKdPOcpxKsTJTCVXjl+k7kcr03BdhQkuij=;
 h=X-Sonic-MF:Subject:To:From:Date:From:Subject;
 b=M5NMcMYlnNpM+KlrjwhtpultJvwBzBRY9e6p0gQ9ojEY4IPTndjzft4mJElhYMzAXZSDcRBgyYlzAegOissGd4IzwWGJ/haWWpM+P4OjnuyeNbTbLuPlKcdl/6KcC6WzagJPjlnumXBbJ9NPphusfnJklGPoip+E7Ef/CP7Sh3wYiZSLvTqEYpMZoQOSW9xOjL+kUFAAuvlXJpWl0Jq7lV4WIGawTbEhiOHCxVddV49Csn/zradF7Zaf/6BpN7YEZ8ki/Ot07aLfNfwDVT+zGisOHyTz8SAnRh6s6pXIim/+E62HuFldUIfLN1u6sDzvvXdbYAU2a8CvTFjyVhfcfw==
X-YMail-OSG: 6e0HJmUVM1mBhRSyllp.aCpo2WnBGoyADTopGIke9S9DJwJD4Y3_1m1kk9KYCRv
 5OxeqTPs0RJHT6l76s4M9CX0oc_0XZR3dp2aNlboGn8RxdYB9eVGcZxinwmfYVtCBI7ldNJbsqAy
 RhVA_3C9bIY7Xk6zQwJqxl2o6Kpoh77IB.8brMb1Thvybtt8HUVTAeKRu8_S8qyhQ9rMFfy6b7cr
 2aUFurKyH6OwmvfdHLE1TpVtJe4DUWEx9.WUKd.NZapajL7jr_MpSudKIhGIoeZCucv2CN_AhuUI
 z2.RtJ0LYs1h4MfidgE6HjNs3C5543nOiBw8F1lotwFZ00_riW2580fbU1o76_gVg6KubjQl78mo
 EPeY8UZUdlkQ4bxx9Yy1X14NbqVh2KwtztE0LLbre1ZJ1RtnWotSkr_52eJb1pDyEHATeb_gKxN1
 hMvFpNMwKjHO0viF8aZ73jR.bQ0Qo7eQkqydhzCtFDrpv2FKfKnylKvzaYZTOrIzGzlVH9siDRdd
 AddaThYIq.4oY2LWfrDEJXW_Banl7YRH2fBqjMarp4wKD0wbrd3Jt_xFPSxs8_KNhL2Gf4neQBF2
 VhDy7gV5ACgjFIJW4D36v4IJLeGzNTfWXdwHF.hCMol6q8GeulKs0HMD2EuCFFRwdRr24D0S6GqQ
 zjrv2c7gKfHbFw9m54oQPzPng94Y72inkeKUzVqUvhuVmVeGUDP0yvpbsUyu.U0a0hJJHrZRoEbA
 2xe0m0cYm6NxI5UMCEe6SwXAiwxMp_PMvUPLZMnruMLmq3ZAKxDcjnv7Enh2tBCgyQhwvI8OmgeT
 L9yN6yOdjouLjkDeU3XvpgvII0ozU9gvfAlh1R9VHjRF438zB1jS2BjDU6_ETGHMH6buK...IfR1
 UzJtpKgGPQwLoFl3ktt9dO7pXgYEaI_hjE9gjNWf.49clfkNSln9gbYwZa4VvDOJs9.GWN6U54gT
 aITXtoYWi66kuOjL2j5fYjU5NasVpp6Pp8DGxLqASIexfki_D5zY.2P8qN4ic3NloBn5mhUzF1kF
 AXv779shtRI4.g9z8zBsFSEJOuZNERK2L1fBvvKuCusDA6WxgIyKGTD3fkADeCdk2ewBD_fxH.iA
 KB1vOP9iZJAi.iMXa0vMvmYyJMrvz6_wdrz41yIrU6Xx02I0pNZNsfV9VNWG2Mqrc3_LbxQ_PRGx
 CWtSb5wFu_DT8b.7bjYz48ut1kie4CVGArdLSXlZ5lIlxAUg3TKT9AI417peKkns0QWscjseg_MA
 8AnaF.DJawZybAtWGRp4Rkk_8CgCEnoPoy9cyGlp3QKWgZEWwO6k.twZHIJ7_34ds7fsSebHSR9v
 LdAFl079WE3n3wucEPah0JB4Po...HFygYHfZySf3vrvOWY1fzOJbcfNSP9DbeaWRvpHsXyOnotO
 0E3WIsRSRxJunSvY8LVV43paY9QYBCMnYh7IdniK_.8jOgpLOPIx4D5mbhdsGaBoMzHn6kzH4uf8
 LUP.XA6cdDJePsJs6BVX7qOPB9WD7b5YW_nJk8KkvOYvQqK8SMfAk5fIGoJ4nym4fO9kiOR9WAqH
 Cq6aBecP3qap44wgXHFX_Sqfff57RcbrKeWrlA65Y0QIvskhqSElHqx0.XMU0WOw0Rz5AY8ogzyv
 Tsf.A8YL..DsZxjHUVNEjTxc4WXIqdYoUPmuQZtjHrcML8odvPSNQIj4KXsrb9pTzlgNwGfTyAOs
 .k7y02IJp7_UHrJY9SoTWAtvaE1DA6k.nLCHJQtiwTtGiWF4pmZb5Kw1Ys9iU5v5SisgkFkK6Cnc
 9AI_jPftXTjNrOXlT3VF2nRLGdRlEzqFN8VQrrJrNkLD5v3OYGYTzD2L7uhfMXcgnQzPg2I2bz_W
 Shg0e1N_UBJOW4FgSmvg4XmuHazuJwuRw_o7b5n3vtLDM2j4zKR2spjKvZ4GEx6Wz9y3QSIQqmxV
 FtnbVPn_EnwzmDU0hKM6WjvNWxpLZJo66vqrqR74TKoIPk7_hpMqBsK73jtJEWroWZTBqzZsS_EO
 24mnJkQdCV_AwfZV8zk3K0_59BfFO8SwV1Z1ArX0.GBdWc.urDp5GhTOeRUsVq3YqZzXYe.Vg34f
 XnFxpf01e6Ew8WUEIKuQZ2ppDCyPipHuH0q.t9hNkUpENrBeTE2yFS.UE.xSsjm4PD1xVE4.SE_x
 cbgjJrTyJcA6a.bM6UHjXX.io5wPgRE64xdj_Vs93phTKuagEG0QsZjZqyk5ocUQWTkw7lgygJtn
 z1xpYa1q2Cu00QDlJLFqj5Di_BYRfgKt.4mky.xf9ng--
X-Sonic-MF: <casey@schaufler-ca.com>
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic309.consmr.mail.ne1.yahoo.com with HTTP; Tue, 12 Oct 2021 17:49:43 +0000
Received: by kubenode524.mail-prod1.omega.ne1.yahoo.com (VZM Hermes SMTP
 Server) with ESMTPA ID 597c16052953db68cb49ee62a6d7313c; 
 Tue, 12 Oct 2021 17:49:38 +0000 (UTC)
Subject: Re: [PATCH v5 0/3] binder: use cred instead of task for security
 context
To: Todd Kjos <tkjos@google.com>, gregkh@linuxfoundation.org,
 arve@android.com, tkjos@android.com, maco@android.com, christian@brauner.io,
 jmorris@namei.org, serge@hallyn.com, paul@paul-moore.com,
 stephen.smalley.work@gmail.com, eparis@parisplace.org,
 keescook@chromium.org, jannh@google.com, jeffv@google.com,
 zohar@linux.ibm.com, linux-security-module@vger.kernel.org,
 selinux@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
References: <20211012165614.2873369-1-tkjos@google.com>
From: Casey Schaufler <casey@schaufler-ca.com>
Message-ID: <3228ad97-b785-df8d-a0f3-a102468f4eff@schaufler-ca.com>
Date: Tue, 12 Oct 2021 10:49:37 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211012165614.2873369-1-tkjos@google.com>
Content-Language: en-US
X-Mailer: WebService/1.1.19116
 mail.backend.jedi.jws.acl:role.jedi.acl.token.atz.jws.hermes.yahoo
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
Cc: joel@joelfernandes.org, Casey Schaufler <casey@schaufler-ca.com>,
 kernel-team@android.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 10/12/2021 9:56 AM, Todd Kjos wrote:
> This series fixes the possible use of an incorrect security context
> when checking selinux permissions, getting a security ID, or lookup
> up the euid.
>
> The previous behavior was to save the group_leader 'struct task_struct'
> in binder_open() and using that to obtain security IDs or euids.
>
> This has been shown to be unreliable, so this series instead saves the
> 'struct cred' of the task that called binder_open(). This cred is used
> for these lookups instead of the task.
>
> v1 and v2 of this series were a single patch "binder: use euid from"
> cred instead of using task". During review, Stephen Smalley identified
> two more related issues so the corresponding patches were added to
> the series.
>
> v3:
> - add 2 patches to fix getsecid and euid
>
> v4:
> - fix minor checkpatch issues
> - fix build-break for !CONFIG_SECURITY
>
> v5:
> - reorder/refactor patches as suggested by Stephen Smalley so eiud fix
>   is first and saves the cred during binder_open()
> - set *secid=0 for !CONFIG_SECURITY version of secuirty_cred_getsecid()
>
> Todd Kjos (3):
>   binder: use euid from cred instead of using task
>   binder: use cred instead of task for selinux checks
>   binder: use cred instead of task for getsecid
>
>  drivers/android/binder.c          | 14 ++++++++------
>  drivers/android/binder_internal.h |  4 ++++
>  include/linux/lsm_hook_defs.h     | 14 +++++++-------
>  include/linux/lsm_hooks.h         | 14 +++++++-------
>  include/linux/security.h          | 28 ++++++++++++++--------------
>  security/security.c               | 14 +++++++-------
>  security/selinux/hooks.c          | 48 +++++++++++++-----------------------------------
>  7 files changed, 60 insertions(+), 76 deletions(-)

For the series:
	Acked-by: Casey Schaufler <casey@schaufler-ca.com>

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
