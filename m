Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BF4D421416
	for <lists+driverdev-devel@lfdr.de>; Mon,  4 Oct 2021 18:29:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9D35984AD9;
	Mon,  4 Oct 2021 16:29:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gn5UbuzGjhFX; Mon,  4 Oct 2021 16:29:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D03E784916;
	Mon,  4 Oct 2021 16:29:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4E7ED1BF2F9
 for <devel@linuxdriverproject.org>; Mon,  4 Oct 2021 16:29:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 48A6E40734
 for <devel@linuxdriverproject.org>; Mon,  4 Oct 2021 16:29:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=yahoo.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dtc4N6w6pjpm for <devel@linuxdriverproject.org>;
 Mon,  4 Oct 2021 16:29:10 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from sonic312-30.consmr.mail.ne1.yahoo.com
 (sonic312-30.consmr.mail.ne1.yahoo.com [66.163.191.211])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 375B4404D3
 for <devel@driverdev.osuosl.org>; Mon,  4 Oct 2021 16:29:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1633364949; bh=mY7WN61pldcW5w9M+Qq0QbpFbxJpAORC0hm78GtixUY=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From:Subject:Reply-To;
 b=XHIONjNnNGQ2rkUz/pE/YWX6kD8055NdZKV/H13W0dIiPZWxUmnTXopjtfdy2/UvlxB3Avs44DrcFBo2MMX/kUTKpC+9gbMon8AI2ZlQURs50tDFSTVh+Djih8FYKxwUolXdoEr/Zffw/KY/Ximw0EWzi9h1+UtsZDOzyCrru9xsxmjVpLCOjOqP5++6g2N0XURgWNaPAO/8EQv1W8ik22njs7DeWm9nq3qWAj8YLbJoRA/SDXlZ0Q1Aw3DEfYBSJJEgTCwcaV0PQvG5PdaydaBQvS25ODpTdFLjxonQDTb+soy3Hy9Z3Cx7aoG9HIZGZm40mw1aNtXbu2Sapub1oQ==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1633364949; bh=JPp34xpBSXvHjnfcEQzPx9fkyysCafX8487Uc6Nyy7B=;
 h=X-Sonic-MF:Subject:To:From:Date:From:Subject;
 b=uCFU1h0CM6I5I53QGT/KISgvHWjV1xuRL5XhUyP9YveMyizmeoe8dkC2jEvuhiJIYo7m7LIcGDC25hI/AJLXP6Drjn+2JTBgcWWD1mlya9FGXK5zk+pusxjMu2DOc5fu4282g+qUXXd5YV0j/lX43obV57tl1c9EexRYMqPsZ5OCJ3OKfKSlLmLkViwIF/5UOqE9ZHN48U7n2v9dzjjtXyURxhKNZ3RRQkazMDXxREAdYmCknGztCV2ZQ6E3+WBYgicPuMTqNrGRG0ZgXLOoAdDJ4aA4efnrB9eWx5lvaOp50ms6/i1KdLKMMkXbW2nqF1/GgstQUYgP2ua9rHIIqg==
X-YMail-OSG: _YNEJFkVM1nLkTKq0WW1nyHy3k1soK5D6P.ap7q9A9gzAgbb1Zhu7Rd4A.xp2an
 c5I15VhYweUie8GFh4hEVeIdYUJnAm8NriYarnm9O.9Asxmu9qVtQrA0P4QoP2nWBaumkcsfSqEN
 Gw1rkL8oqhanK9CTOvQw5ElCT_kFje3ZJvr51_5gHUVL_kN0kfYdDr_NoCxkHiMCj7kjF7aRg5VR
 IOb5FxgoJCwY81nOcTjXH8IC9I_Z_UzMFa_jdf..r62xmwZv4JvgleWv8d6B_kKSJKKmM0uk4yg.
 2c.deQ8Zx.zbqjJDC4o2_GjZMmSmXo27jN.W.0rmd.nBWSGXGorWDMvXr7AliqMyZjLHSdlRnbSk
 6dqtQVQOtG_jMHUuN1t6nx9Xi3oJ8ubEpAs8u76JpPrRQ3hqHj8gvGMF3.KPes8YUj.OEuaAZ8m0
 qGEm9ycst_Yeso9Ro0DntLAYjy4zT__jUIducYgV3M2soyfOE51xuXWY_18EHU3DVxd29dYURwy1
 xXKmVmQp7VndsnDFWm_6RMQciLQ1U8s8jtmubue1Dkb40AHwobJ1MqyXYqwLnQprgpG0tsgjNe0L
 PH9AefYMFHrzFByCUEMiyCKMkMCJRUXPI_fGmIZzlh0on0eY0ATEgKLnX6imN.7F.rQjSAvqaftC
 PKcKNgm_E5YpL5ywFYSSN8obokAToFLKoen0aKj4TWnNirBb3.UhiaIyfhFUWyZRmc.A20pqONoM
 MRnaGvTdmBMf2mYpzyuxtQNnQkZT.V4rstaNJPdO0AAsSHKz8coRPczYVOwEEMPLj18CswKYDmXH
 Nr.5.rf1ERxuND9bmkdrPMZMaFZzwoxc_947.67IiL9xL8C1iVird6lpi6hSBjawuYwGYPWa4dXJ
 w0s2ir67Ax.2hONwoZ18aBU_mR1KROph4klDQFP8NCQ7.3wPnYJ4_eETWN6M1c0xsLtY2V.KvgIs
 l.iL0.lQsoJd7IBA8geMcI9ak1_2gUs0mcMmAr0lN7pq4bpHRQoMVyaqH5ohwDRYD2FqIKFhaIIg
 L5m7UzkW_Wjpn7veIp3gRmhAw.tycRepbYimTFPOUN.OBVT156eTNnsAqIkELjUHz2aAWQFVtEqb
 m1MoWtm6q4MDeFq6MODPnc6v9Dvz5sR08GZ9vJD38_D5XWiPZaSH.YELp3WYT4lbfLqQKdfinLWs
 GQrDVyCLFcq3y048SiasLdjnBrxu5RA9TvthjCGCfS.CjiMkGLHgXj_QbcZD1MlkZzqdOFw7u.XL
 a81ApPoHUP9zclWfImy2kitcdRA8UcEYEl2CoayCg.L3J4ckBjq_hptLeukUkxnbbdco9PnJET3v
 GvFGnQE3XNhiNwFwIpQsRZboBh_EdQBMtxF7Q7zc2TFaEI_8C9.dbmHJpcJjw_.7VSoDnxJUQbBu
 96kG5QncOhCMq08fR9eG2.WWVq2_lIwUymt.orYVgHjRtm1rcgQjoiCzA3DzGB_uB5Vz2ro8Douc
 VPOdk3jBr9VJKpe4A1aXYFs3tDpdlYAuGsil0Wqa.d4sorlQWWxhWM1O.V05tbGJfReaBHmDslE3
 scXnJ.0yTnESd7HOpa9GVhMWuFznQY0eiYLxSeP2cfGF6N.GzVEbXUaenWOSPIE21JdVf04.akCe
 d_oTRCfx.VNQsslRAQaUXwIEo6ukX67sXfI46kgvIKFc10U7_MbnULmn6YQsh8R0JjshFm4J03rh
 u2TRZ9C4bNyYYfm9pxtsCnGdAdN3lnAtnM5XcXFpfU6j9KC7te9n9BssbleEfOcVBQDDXMeNPMwQ
 QDQRuILlodAcA0TwTZAab2xMxiq0eF9xdjrN27vIxmEMfjNtEjMFbw5Q4mhWj9i7da__p9RVhBxw
 vbMwLERCneDeuFmDfow_BAFLimSjvvCx_XHbFalJUOyhWGPw9apKTUlEw9SjCg9vle4f4RO_VWzU
 57lCJgcTWsgqTQrXmaGE1Lxi32gq.Yp1ugKvNZBVSWPi.NXLK7sn_JEIeqLImPdUrt71fXzk.sQI
 Mo22dQqO_1SxerIZZjkiUF7kZLW9wuGhWacL1U5fzEkZHHCqZ8jHMywMrDUYdiV4ohT9w1gJyBh7
 v.gUx3D8ovVaiV7AJ2AxZdCfs7pHE322O7OlbT3rGTeGjxWo4vrRK1IwUUQ8wqgo95p0m26LpTdH
 FrYJKGFZiVu2GT3JPfZVlatKjyLR82Vna_bkDS5LcNWRrJBwVWa.M2V6uJ.GYAPdm9j_8C4aUNz7
 4h1z47jEbpBLyWMHdebfzol1RjO3dytFmvnzSgUYwXk21Rm1SG_VEyrSg9ljqadDaZ363VQ9IMXk
 JshWuyXr5sfA7slk6eyPxFhkzWcZnVJTIFEx7f6wcBIs-
X-Sonic-MF: <casey@schaufler-ca.com>
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic312.consmr.mail.ne1.yahoo.com with HTTP; Mon, 4 Oct 2021 16:29:09 +0000
Received: by kubenode510.mail-prod1.omega.ne1.yahoo.com (VZM Hermes SMTP
 Server) with ESMTPA ID 6372976e85edb1cbbbfc2c0ba5be9d7a; 
 Mon, 04 Oct 2021 16:19:03 +0000 (UTC)
Subject: Re: [PATCH v2] binder: use cred instead of task for selinux checks
To: Jann Horn <jannh@google.com>
References: <20211001175521.3853257-1-tkjos@google.com>
 <c6a650e4-15e4-2943-f759-0e9577784c7a@schaufler-ca.com>
 <CAG48ez2tejBUXJGf0R9qpEiauL9-ABgkds6mZTQD7sZKLMdAAQ@mail.gmail.com>
 <CAG48ez1SRau1Tnge5HVqxCFsNCizmnQLErqnC=eSeERv8jg-zQ@mail.gmail.com>
 <f59c6e9f-2892-32da-62f8-8bbeec18ee4c@schaufler-ca.com>
 <CAG48ez0yF0u=QBLVL2XrGB8r8ouQj-_aS9SScu4O4f+LhZxCDw@mail.gmail.com>
From: Casey Schaufler <casey@schaufler-ca.com>
Message-ID: <e0c1fab9-cb97-d5af-1f4b-f15b6b2097fd@schaufler-ca.com>
Date: Mon, 4 Oct 2021 09:19:02 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <CAG48ez0yF0u=QBLVL2XrGB8r8ouQj-_aS9SScu4O4f+LhZxCDw@mail.gmail.com>
Content-Language: en-US
X-Mailer: WebService/1.1.19076
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
 devel@driverdev.osuosl.org, paul@paul-moore.com, jeffv@google.com,
 jmorris@namei.org, kernel-team@android.com, tkjos@android.com,
 keescook@chromium.org, selinux@vger.kernel.org, eparis@parisplace.org,
 maco@android.com, christian@brauner.io, gregkh@linuxfoundation.org,
 stephen.smalley.work@gmail.com, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, linux-security-module@vger.kernel.org,
 Casey Schaufler <casey@schaufler-ca.com>, Todd Kjos <tkjos@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 10/1/2021 3:58 PM, Jann Horn wrote:
> On Fri, Oct 1, 2021 at 10:10 PM Casey Schaufler <casey@schaufler-ca.com> wrote:
>> On 10/1/2021 12:50 PM, Jann Horn wrote:
>>> On Fri, Oct 1, 2021 at 9:36 PM Jann Horn <jannh@google.com> wrote:
>>>> On Fri, Oct 1, 2021 at 8:46 PM Casey Schaufler <casey@schaufler-ca.com> wrote:
>>>>> On 10/1/2021 10:55 AM, Todd Kjos wrote:
>>>>>> Save the struct cred associated with a binder process
>>>>>> at initial open to avoid potential race conditions
>>>>>> when converting to a security ID.
>>>>>>
>>>>>> Since binder was integrated with selinux, it has passed
>>>>>> 'struct task_struct' associated with the binder_proc
>>>>>> to represent the source and target of transactions.
>>>>>> The conversion of task to SID was then done in the hook
>>>>>> implementations. It turns out that there are race conditions
>>>>>> which can result in an incorrect security context being used.
>>>>> In the LSM stacking patch set I've been posting for a while
>>>>> (on version 29 now) I use information from the task structure
>>>>> to ensure that the security information passed via the binder
>>>>> interface is agreeable to both sides. Passing the cred will
>>>>> make it impossible to do this check. The task information
>>>>> required is not appropriate to have in the cred.
>>>> Why not? Why can't you put the security identity of the task into the creds?
>>> Ah, I get it now, you're concerned about different processes wanting
>>> to see security contexts formatted differently (e.g. printing the
>>> SELinux label vs printing the AppArmor label), right?
>> That is correct.
>>
>>> But still, I don't think you can pull that information from the
>>> receiving task. Maybe the easiest solution would be to also store that
>>> in the creds? Or you'd have to manually grab that information when
>>> /dev/binder is opened.
>> I'm storing the information in the task security blob because that's
>> the appropriate scope. Today the LSM hook is given both task_struct's.
> Which is wrong, because you have no idea who the semantic "recipient
> task" is - any task that has a mapping of the binder fd can
> effectively receive transactions from it.
>
> (And the current "sender task" is also wrong, because binder looks at
> the task that opened the binder device, not the task currently
> performing the action.)

I'm confused. Are you saying that the existing binder code is
completely broken? Are you saying that neither "task" is correct?
How does passing the creds from the wrong tasks "fix" the problem?

>> It's easy to compare to make sure the tasks are compatible.
> It would be, if you actually had a pair of tasks that accurately
> represent the sender and the recipient.
>
>> Adding the
>> information to the cred would be yet another case where the scope of
>> security information is wrong.
> Can you elaborate on why you think that?

The information identifies how the task is going to display
the security "context". It isn't used in access checks.


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
