Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B05C3429944
	for <lists+driverdev-devel@lfdr.de>; Tue, 12 Oct 2021 00:00:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 025FB403BB;
	Mon, 11 Oct 2021 22:00:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U89TFgysZI9Z; Mon, 11 Oct 2021 22:00:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DD92640387;
	Mon, 11 Oct 2021 22:00:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7B7E91BF20B
 for <devel@linuxdriverproject.org>; Mon, 11 Oct 2021 21:59:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6ADA080E44
 for <devel@linuxdriverproject.org>; Mon, 11 Oct 2021 21:59:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=yahoo.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 035xaPREqE83 for <devel@linuxdriverproject.org>;
 Mon, 11 Oct 2021 21:59:51 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from sonic313-15.consmr.mail.ne1.yahoo.com
 (sonic313-15.consmr.mail.ne1.yahoo.com [66.163.185.38])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C698380E3F
 for <devel@driverdev.osuosl.org>; Mon, 11 Oct 2021 21:59:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1633989590; bh=Zqhg448+kp6mEiue7M5/FNvpz96vUnZrgGFVgDvWQDQ=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From:Subject:Reply-To;
 b=Et9ee1Csb2UNZamsi+KZ4pRLbTprSEvdYjruG+zGhpRBL0S/VFpbGIkMg3z8PhibobYmFekZ8DlpCm/u9axYfxHKphk+W/RocVMOgXm4zATIWIpYUCQEdmwwBkBTU540lPEb9Jw3iIITiovwaCBFt88na28VZSmlUvTbwi3eTZeWr7xQ3iWdi8shbqbG01P5Bh6MgoeK/toC9hIyLY8ihXKSDSxJofkZXe8dGiYuvxLgTsLlz91pG4+XKGr4E4KLiJKdPkBAd4AwphRvxMu+A8BuO49OrHXca8RxhybPLA3v5YGUGzg32YZy67lQXtUj5FnVOJavxOVlDz0ik1XF7Q==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1633989590; bh=gCBOFNRCnbv//7buHKjtp80F2ar0lHhJO5vz1hXnyui=;
 h=X-Sonic-MF:Subject:To:From:Date:From:Subject;
 b=CPWvjbYrYq7iCfRzzXq+1LRR1zc1HraeIoZvoIASJ0fSmgKvDg+/tjfHBA8+26ASkd4YV7KqTr33xu+M1paQtCPPcF5FoKXp+zY09VMZRVlG0K7n3nj3vo9DEvjyIH/IrMFGK9FMl2deFzhFviD4EEx3OoW2YROT52PcTvs9zYJ9i5PCZopNvWpMnlMJk5Jel5/tIPmWC2cD/MLoDjunmVvApKrEaX0WngSEa7iK7BPTjPxfWu73xgkI7a8A/XLdCELd9UbhDiYR0/gQ10AG4RYwAyWk8C791u6q2dk3Nazfx3NWp194dumoY7mTAFH/D0vd1B4LbU9931OO3nChwg==
X-YMail-OSG: aC0JH90VM1kfDaKTkIdU2qA35lYCCxBu2otVh_5jlPvwsFge4HpFDaXmDW5vvOB
 GwrAbfYk95JHT2s.peY5piTSdcmT9U_lm97avpy2QuRQeg232Yvj3mMDUdhLtPc4n39COSGc0mXA
 SpEWvgxiBhukIU7D5LYOZ1IW7ifATJ418D.5spvthYI4iTdsJX_A8JhTOpKvLGL46FgLVPFK29to
 afKhuG9_i5hLuhPKVfigyf0c7ebxBcMF5lGT_pJES8NN_wykPN_9H7RHqhs6VDCfzYcFHxyBQlBY
 MCL_8sxRupLd_TDuiEoMOvFyxEzsUzfBnF3M9CxtMMeaDbtVadc2bWgiDeYMfvXrGdo7i4K6CnPs
 9yKe0m3YOzmVGGrKF7EpiE0lC5aM5m3ZwuBUAVKfRLiUbtt.0afW8JFkq_nBLqy6BMjzD_Nu.z4z
 Up7EvQ0z88cOrjZzfjVqeJZSSLkVO8loo8opin59vIFvJMoRgWObKmg.IzgfSmmQ4fB9gAkHmUAS
 XYhgiceXQL1oka6ysLgZWAidGXoKac8ja7PehpFWMUzqNXHfknNdUcO8f.MBFCtsVfi.PtVxc_Wk
 gyCE2V2rQIpbPTcULt_qIp9MSCkeillZ.qcXsaJxe8vRy0uEdrzXzfXYQ3ft0TiCEq3Hj93bcMLQ
 G_3eq5svQzY6utGHIac5sCV5KYqEyflwc6RbuCLLXWiIGfXtZfUj2_LGShDLWqVmQSDQ.HqTL4hK
 xdOL6zx0JbdmHiacB0FAZGV7BIkF9_aagRSxHjkSYLOcY1oHXmlcbtpbw6E16ewy7m0HQHEOzoF_
 j0hwF8qFaILSMtkVuNp1rtMC3Nq5ebOrX43moO.S73qqRRCgRwEXNnVVjufX5G12jTrT7wZqjhme
 6Kt5U29KCovNh3qqvyZVAb3Gl.Hlnqmn4ez8T3i0sI4TDcbo3w3MFS.DOfayLt3HobrosfZAsVUL
 _5sa7awUj2cUka.3xSAOctPBXFnhT_xt3mgW2lnGPxEM7s0DAfY3VuQ9Y3s1D4c9CF.riQYX3pch
 j7b4_EJDLR_NXc5951c7iaV7pQB.rmExBnVkjk1AygQ7XR4MQEmfywB0UDQnCLW0NP.9nSopLh1t
 AA7RNBPODRXPYC551LrFF7k1aH5zCKo.8GOleu_KvxA9VulVtzujEyScr6xzPjar2o1LJ8gKz98c
 xlx6qvslsSHHn6H_LCxQG6EqEkgTPdQPwKYpL3PmBq6fzS_6PidclodJdHHok1wJp5Q35Gv1EHul
 tYP62nckwEuNQa1w1NFR7CV0WH6VkSgKlCu80PnK5HsrZB0E1H919DLFpHFK7K.EHyOzpIW_FwMb
 uqzOGmM.z35liqYIz7hOMfdAYYfPlKA5_6kyLDVYX3YG_Pa_vOmFLB7jcyIkaJP.UmUC_1ERZCpN
 TmZXer7IfecorSQtCBufKfV97KYRJ6MdIYoLO4RgQ8pHU1toRGnWYC_ELrJ8i4NPoH1dA3h58gRn
 vfh5pmkbS0kwFRsZLcTAddGgceXNDipMTmtT2QCVdzxIWlGJQSmOdUwVizvoUjCIsH.K9AzZrt1R
 hwRO5HzeR.ewqXZyY1961LOfeG69sI0VAVhfGMVhuQXe66_fsyqi7fuNQ90n_fpykS285RATFuar
 GIjaWeQqtZtlVgejKB7354d_F3vHWKDEbahvr9dJG.bnwVpZXPo3k_8vaGUl_qrgG3nfBzCTRUFF
 tINgV_vwbsjh_YN3kAws4bkHGP8O2Yq0vVSHUtXhdW2Kxg7lsF0JPlu5wIESd7p8aE8p6DP0vKHy
 wZFDZjM1ttPuLzZwx1z4LYou06eLhbtdAE7x4oy9KAA26emlZic4dMHsmzprft1YKtT18U9OYbbV
 XX8ywJgOzQd9tEc.6It0nNurBrn1DeCaQZY7LA9okkv_oHDE8j4qfJbs6.yWAfM9nkUBanvdU1kt
 Xih8M.n2ArtWIf6rVCol3M0tNt5d7_NP16o60lKxQZXHykvJjjGtr4_TxZlRVGucwJgiFepVhMgr
 Q56u_fYQ8GT.ciwl.FbzivVzoBCI9H7DI1XvWkAyv8YZyT6WlQWfUI_NN3AfHlP_4_AAgcYKjaXT
 fSP8476K9iTcQFK.V2jrt3bD9hklRFUQhud5wNUgD0RpNqPLBe0KZ6Ukm2CCaOPsj9BcNCObdXGg
 rlHRPVVRmY1uDkeX6.oolgkhPHf.2T6o.Gtk1igEHCu3XwYbwD1xWtKerIWoDlSz_LyU5bo9bT.C
 8uSrQAiPf.hLyNn00JtN9oLvLwD4eJ6UqJA8c
X-Sonic-MF: <casey@schaufler-ca.com>
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic313.consmr.mail.ne1.yahoo.com with HTTP; Mon, 11 Oct 2021 21:59:50 +0000
Received: by kubenode517.mail-prod1.omega.gq1.yahoo.com (VZM Hermes SMTP
 Server) with ESMTPA ID 3ba437dd57240fce1e91852cfbdd0152; 
 Mon, 11 Oct 2021 21:59:14 +0000 (UTC)
Subject: Re: [PATCH v4 2/3] binder: use cred instead of task for getsecid
To: Paul Moore <paul@paul-moore.com>, Todd Kjos <tkjos@google.com>
References: <20211007004629.1113572-1-tkjos@google.com>
 <20211007004629.1113572-3-tkjos@google.com>
 <CAHC9VhSDnwapGk6Pvn5iuKv0zCtZSbfnGAkZwKcxVYLVRH6CLg@mail.gmail.com>
From: Casey Schaufler <casey@schaufler-ca.com>
Message-ID: <8c07f9b7-58b8-18b5-84f8-9b6c78acb08b@schaufler-ca.com>
Date: Mon, 11 Oct 2021 14:59:13 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <CAHC9VhSDnwapGk6Pvn5iuKv0zCtZSbfnGAkZwKcxVYLVRH6CLg@mail.gmail.com>
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
Cc: zohar@linux.ibm.com, arve@android.com, joel@joelfernandes.org,
 devel@driverdev.osuosl.org, Jeffrey Vander Stoep <jeffv@google.com>,
 James Morris <jmorris@namei.org>, kernel-team@android.com, tkjos@android.com,
 keescook@chromium.org, jannh@google.com, selinux@vger.kernel.org,
 Eric Paris <eparis@parisplace.org>, maco@android.com, christian@brauner.io,
 gregkh@linuxfoundation.org, Stephen Smalley <stephen.smalley.work@gmail.com>,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 linux-security-module@vger.kernel.org,
 Casey Schaufler <casey@schaufler-ca.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 10/11/2021 2:33 PM, Paul Moore wrote:
> On Wed, Oct 6, 2021 at 8:46 PM Todd Kjos <tkjos@google.com> wrote:
>> Use the 'struct cred' saved at binder_open() to lookup
>> the security ID via security_cred_getsecid(). This
>> ensures that the security context that opened binder
>> is the one used to generate the secctx.
>>
>> Fixes: ec74136ded79 ("binder: create node flag to request sender's
>> security context")
>> Signed-off-by: Todd Kjos <tkjos@google.com>
>> Suggested-by: Stephen Smalley <stephen.smalley.work@gmail.com>
>> Reported-by: kernel test robot <lkp@intel.com>
>> Cc: stable@vger.kernel.org # 5.4+
>> ---
>> v3: added this patch to series
>> v4: fix build-break for !CONFIG_SECURITY
>>
>>  drivers/android/binder.c | 11 +----------
>>  include/linux/security.h |  4 ++++
>>  2 files changed, 5 insertions(+), 10 deletions(-)
>>
>> diff --git a/drivers/android/binder.c b/drivers/android/binder.c
>> index ca599ebdea4a..989afd0804ca 100644
>> --- a/drivers/android/binder.c
>> +++ b/drivers/android/binder.c
>> @@ -2722,16 +2722,7 @@ static void binder_transaction(struct binder_proc *proc,
>>                 u32 secid;
>>                 size_t added_size;
>>
>> -               /*
>> -                * Arguably this should be the task's subjective LSM secid but
>> -                * we can't reliably access the subjective creds of a task
>> -                * other than our own so we must use the objective creds, which
>> -                * are safe to access.  The downside is that if a task is
>> -                * temporarily overriding it's creds it will not be reflected
>> -                * here; however, it isn't clear that binder would handle that
>> -                * case well anyway.
>> -                */
>> -               security_task_getsecid_obj(proc->tsk, &secid);
>> +               security_cred_getsecid(proc->cred, &secid);
>>                 ret = security_secid_to_secctx(secid, &secctx, &secctx_sz);
>>                 if (ret) {
>>                         return_error = BR_FAILED_REPLY;
>> diff --git a/include/linux/security.h b/include/linux/security.h
>> index 6344d3362df7..f02cc0211b10 100644
>> --- a/include/linux/security.h
>> +++ b/include/linux/security.h
>> @@ -1041,6 +1041,10 @@ static inline void security_transfer_creds(struct cred *new,
>>  {
>>  }
>>
>> +static inline void security_cred_getsecid(const struct cred *c, u32 *secid)
>> +{
>> +}
> Since security_cred_getsecid() doesn't return an error code we should
> probably set the secid to 0 in this case, for example:
>
>   static inline void security_cred_getsecid(...)
>   {
>     *secid = 0;
>   }

If CONFIG_SECURITY is unset there shouldn't be any case where
the secid value is ever used for anything. Are you suggesting that
it be set out of an abundance of caution?

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
