Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 57731422EC5
	for <lists+driverdev-devel@lfdr.de>; Tue,  5 Oct 2021 19:09:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BDD60407E1;
	Tue,  5 Oct 2021 17:09:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6GZOc-RdUCFQ; Tue,  5 Oct 2021 17:09:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A329B40760;
	Tue,  5 Oct 2021 17:09:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7146C1BF3AA
 for <devel@linuxdriverproject.org>; Tue,  5 Oct 2021 17:09:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5F48B40297
 for <devel@linuxdriverproject.org>; Tue,  5 Oct 2021 17:09:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=yahoo.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bYDleX3VAX40 for <devel@linuxdriverproject.org>;
 Tue,  5 Oct 2021 17:09:19 +0000 (UTC)
X-Greylist: delayed 00:10:02 by SQLgrey-1.8.0
Received: from sonic313-15.consmr.mail.ne1.yahoo.com
 (sonic313-15.consmr.mail.ne1.yahoo.com [66.163.185.38])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0F14140284
 for <devel@driverdev.osuosl.org>; Tue,  5 Oct 2021 17:09:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1633453758; bh=Bj1hJ02S4xB/8I5A/Hi/T40hl7WiEktzVWzasl/bzZ8=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From:Subject:Reply-To;
 b=HFE+QXu1aa7h/yFMAIr5v2Nc01CCz53HOSiiipVaPWbQKPb6cN7OJ8MKQxxS0YsRjwhpKsLY6FJlXX7qBbfJ8ia6oQTuRpEYhF7nJ7Urz1b98dBnZSh912B4/Wgrd7oHTaUplGZ+3nDCwxMxxo00Z1Fklryyz6AKhXhZa6+Q2q/erPfs18KzmmDmySowCn3f98MSuxrhK2IbJ+cat+RMT2AWb3fJXuCgwPUqyr6KzYoUx66zkIyvw6HCTUgXNV7dgsiex9wHTUsHakWhYzoHpQP8J86d227VfyRdmiATzTPnT8jlpsFc1PiBEscw3qHY98zFjAnAj5FJzZCpD1aE5g==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1633453758; bh=TqS3hmTEqmtkIKzRDsC+AGTyjtY31OLL6iWmTCfeINp=;
 h=X-Sonic-MF:Subject:To:From:Date:From:Subject;
 b=mXyKKDX3lg3rCtUotAgczGKw6SNeFiogkoEv+Sd+u9rSf1XbW/xFXV6A4OFpge1AgKI89zfn8AUbyg22fecT7yG7gdkoc4mGvZETqmhPeV4sdEQHEpqJ43qq2YEEUUOFT8fUHsF/pFCmlyOqMFazfggUmUuFxTEg2yv79w8he304fcg6NWxGKzcmWJbT+ipJ3A5A1deREvEnGXC/i4Gw+TBnkGQUwQXkcTBUknCZzeYBt09+hntvee4YwVB0p+wHaDb7NSSnjibw7oCdGCHGsWZYy4d6GTZuvn1NWtYaYhqscvCXPtu6kIYlle5ocFUzRYlvCuhG4EvlGDa1KQFV+A==
X-YMail-OSG: rSmU8NoVM1n28SY4wx2gYiCMluXSmA325qvnJI7uIEnnu__dJFIN3wbY3x7Hrdo
 xL6FJzNchqGB96dfo4U7Sc0WOnjbZYaAfoZDrYZbEGD6FYwi1J5JQ.ESbVw5lGvywJkv91xzIatS
 R8W3XgWLZotKeTbohp7NeYFRaSt5tDBuXJnt_6t9rfGKr5imUm5bZrZRF4TtJ45o9ESgmc1phlve
 4mtgNfhd4ALkHjDT3bstnWkWhevbUtQy4XjTe14DX43Xf6MbOY5BYgDwonKqs8TXlVKcDeRsqU3L
 QZiXPrpaK0JW18oc6W9eIs.WUzYGx.596FBXSDv4yrT5_INZ3XPYtFqKnO5XGEfFXTRt3gzJUxDV
 v2QJ3Z1WDUIloBcEkAw6abwV0mE6aojJwAEbQ3azOu7uVjYYuMSbIRyhJKSXCYFaPbp_7kamtMCV
 4tWYUpyuUdjfWqR8kqnqGEhFP_F86bA9E8Thkt8VNZsKkZGt1V.rVBY1raAhhbWhBB4NWAiz_DyJ
 O2V1rJr1tc.NAbCyi2lBVXzXI_SS4rr4BXw4eOfNfKHfGIbOweynImEGihCmqsJXCRTqyyvg9jER
 qAhSz9nuKOm79sFXK7YmRMOzawCVC1QjxEuo6KTbipVrHh6YA0NX23QmCrbU5pnmiKi.X2BB7P.X
 6E_MdcDmjhVM5LTaJAvPo5xr5hSexyDDkdkynGsz4wfFTs2sZCTX0_hgMSWAB.NNV3bnuNH1QRBi
 b9mgisdS31iAi0UU194Z_sV.eJTSNS_UTR8Z77dtwse2dtlpo_0agbgry2sNqs8dqy09vKo5CYDl
 ONoAzkoOoic8etIfDsibbXa0gLgyHaqy2uV55AbKxkVRUVfGxzeD3Nl_4bknsAW04MU2bIIDQOQq
 qfZNzGcrpox_K0St7wwLPizeW62AmLoKwJ0yR4AIFyoIPKuzLQrGO7YneFNsqKIwroeSA.yD19rc
 tmjI7xcgR9XxvNjHM_lsW4T9UWeBif_dwUEpIYh4cyeqJYlwDkC2X5ilDiENlO4XziDGCk_jqwDm
 M9lXZp1jZA_tqDB8PxMuJd.4ket1YZjQI1YHlyRw9Sje7M78898L_0iqNB0zfo8LFssvXwy_34Lc
 qgwiItaJi.hCyGYWOSpumDXMk6RZuZx6Wiyf_R0oSYEqynYYb1Td1SoeIYiEfwZ2a469v3Zr.FMK
 jeYrUfBP.eTGgfa6c5cdfT75_aXeEpD6z42taqhf_qM_u3pp9O2iv.61O0VYFSB5RQ0QOBxrS2CF
 PHqArtAJETIoj6PNJX05SZPS9mvF0s7BxGAvmuWyLKbOxDgRh7MzEVhnRQ_SP6u9tRdbU7k2Fjvp
 _.0HPLevIk.MiAbYwCOSR53zvOqipeWQpQr.NjujZuAIK0BsN0C58qFZujAn0oiC87HWBtNzU_5K
 Domf6nWkzIhDK0l5bBC_M7MDNLYeAfgdn6WjoWun9zA9akdzd0BUJSoEIbYGaTGBiTmwAep96r0J
 AJQe7jyjWeoQRV7nSdYB4454nTuYP05e30MM0Os5EzMrdK9e8onshYRdePl08cg1MYYdLxgjihSG
 _9v3fBkqIVbBVZq3G6y3iRGABmJAcI4bKym1WD3MVE09.2JfNk3Gah0ynipXrA9Badl5aPVrXMDt
 hqU_fimGKkLGfjq.eqCSJILsQTJ89YMv284B2zUWFWiUTpAp1Qn0SHimk_CQTOZevUeLwdMSCIfv
 kTXRAceGajLpcMfnquDt2p_G90GlLYBJ8HJ1h3JE5UwVtpiw7bo6He_Hk5TDEHI8B63lwFkRA0lC
 AErRs6gt090.zFQFN6VdCZWaAO3cJNeXr0jInh8dL8p1NAk4O1g3eklaUTx.DaW1znRSYRFa4pgO
 QHiPVq7IVX_G3JanuYwy2IUECcne_RAEdGxcRbtFh4qyI8SklXkkEKksGkm3nZkZVUkxg7gKrk4G
 tRfbfX28mwToLwuQ8weDSnYTHdaQRUdQgRt8Gh9ETCogDXW89YngerAI2JD4bjNBA8eBUGuP3LEK
 gGqk.1_OVeqt6mnz3KYP7BE_SA90tWTFi6KpB85qVlvc9n07Qs4xK86.faum9fhMyyc1bYmpOGxO
 4erFoA4txpXom3nmEI0nklqh399y9x6ZCPUjOclFJRAMJmkpZV2Lj6MBJAOwMGURr2NLv9FpLFRt
 AXD2At4WVeRlJ5Ou1FoeKmE_TLzNGA3hVBHzAM_iB5tFJ7ffTjq3jLnPmgONB9Kxl5NxcXTdY2UE
 BO7VGsmbFBzdDxGvdic_BO3BmRtCguqdRaqK0MEvrQP9sKE_wdWKT6O7w53YDp1nRorMHstNYdIC
 Ilcgq4JXVzKR1mA--
X-Sonic-MF: <casey@schaufler-ca.com>
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic313.consmr.mail.ne1.yahoo.com with HTTP; Tue, 5 Oct 2021 17:09:18 +0000
Received: by kubenode558.mail-prod1.omega.gq1.yahoo.com (VZM Hermes SMTP
 Server) with ESMTPA ID 438f8337cce7bf1db3633e083569866a; 
 Tue, 05 Oct 2021 16:59:10 +0000 (UTC)
Subject: Re: [PATCH v2] binder: use cred instead of task for selinux checks
To: Stephen Smalley <stephen.smalley.work@gmail.com>,
 Jann Horn <jannh@google.com>
References: <20211001175521.3853257-1-tkjos@google.com>
 <c6a650e4-15e4-2943-f759-0e9577784c7a@schaufler-ca.com>
 <CAG48ez2tejBUXJGf0R9qpEiauL9-ABgkds6mZTQD7sZKLMdAAQ@mail.gmail.com>
 <CAG48ez1SRau1Tnge5HVqxCFsNCizmnQLErqnC=eSeERv8jg-zQ@mail.gmail.com>
 <f59c6e9f-2892-32da-62f8-8bbeec18ee4c@schaufler-ca.com>
 <CAG48ez0yF0u=QBLVL2XrGB8r8ouQj-_aS9SScu4O4f+LhZxCDw@mail.gmail.com>
 <e0c1fab9-cb97-d5af-1f4b-f15b6b2097fd@schaufler-ca.com>
 <CAG48ez3qc+2sc6xTJQVqLTRcjCiw_Adx13KT3OvPMCjBLjZvgA@mail.gmail.com>
 <6bd2de29-b46a-1d24-4c73-9e4e0f3f6eea@schaufler-ca.com>
 <CAG48ez0RM6NGZLdEjaqU9KmaOgeFR6cSeNo50XG9oaFxC_ayYw@mail.gmail.com>
 <CAEjxPJ4X4N_zgH4oRbdkZi21mvS--ExDb_1gad09buMHshB_hQ@mail.gmail.com>
From: Casey Schaufler <casey@schaufler-ca.com>
Message-ID: <7ec1090d-5bd7-bd05-4f38-07b1cc993721@schaufler-ca.com>
Date: Tue, 5 Oct 2021 09:59:09 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <CAEjxPJ4X4N_zgH4oRbdkZi21mvS--ExDb_1gad09buMHshB_hQ@mail.gmail.com>
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
Cc: devel@driverdev.osuosl.org,
 LSM List <linux-security-module@vger.kernel.org>,
 "Cc: Android Kernel" <kernel-team@android.com>, tkjos@android.com,
 Paul Moore <paul@paul-moore.com>, Kees Cook <keescook@chromium.org>,
 SElinux list <selinux@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 James Morris <jmorris@namei.org>, Mimi Zohar <zohar@linux.ibm.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Casey Schaufler <casey@schaufler-ca.com>, arve@android.com,
 stable@vger.kernel.org, Jeffrey Vander Stoep <jeffv@google.com>,
 "Joel Fernandes \(Google\)" <joel@joelfernandes.org>,
 Eric Paris <eparis@parisplace.org>, maco@android.com, christian@brauner.io,
 Todd Kjos <tkjos@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 10/5/2021 8:21 AM, Stephen Smalley wrote:
> On Mon, Oct 4, 2021 at 8:27 PM Jann Horn <jannh@google.com> wrote:
>> On Tue, Oct 5, 2021 at 1:38 AM Casey Schaufler <casey@schaufler-ca.com> wrote:
>>> On 10/4/2021 3:28 PM, Jann Horn wrote:
>>>> On Mon, Oct 4, 2021 at 6:19 PM Casey Schaufler <casey@schaufler-ca.com> wrote:
>>>>> On 10/1/2021 3:58 PM, Jann Horn wrote:
>>>>>> On Fri, Oct 1, 2021 at 10:10 PM Casey Schaufler <casey@schaufler-ca.com> wrote:
>>>>>>> On 10/1/2021 12:50 PM, Jann Horn wrote:
>>>>>>>> On Fri, Oct 1, 2021 at 9:36 PM Jann Horn <jannh@google.com> wrote:
>>>>>>>>> On Fri, Oct 1, 2021 at 8:46 PM Casey Schaufler <casey@schaufler-ca.com> wrote:
>>>>>>>>>> On 10/1/2021 10:55 AM, Todd Kjos wrote:
>>>>>>>>>>> Save the struct cred associated with a binder process
>>>>>>>>>>> at initial open to avoid potential race conditions
>>>>>>>>>>> when converting to a security ID.
>>>>>>>>>>>
>>>>>>>>>>> Since binder was integrated with selinux, it has passed
>>>>>>>>>>> 'struct task_struct' associated with the binder_proc
>>>>>>>>>>> to represent the source and target of transactions.
>>>>>>>>>>> The conversion of task to SID was then done in the hook
>>>>>>>>>>> implementations. It turns out that there are race conditions
>>>>>>>>>>> which can result in an incorrect security context being used.
>>>>>>>>>> In the LSM stacking patch set I've been posting for a while
>>>>>>>>>> (on version 29 now) I use information from the task structure
>>>>>>>>>> to ensure that the security information passed via the binder
>>>>>>>>>> interface is agreeable to both sides. Passing the cred will
>>>>>>>>>> make it impossible to do this check. The task information
>>>>>>>>>> required is not appropriate to have in the cred.
>>>>>>>>> Why not? Why can't you put the security identity of the task into the creds?
>>>>>>>> Ah, I get it now, you're concerned about different processes wanting
>>>>>>>> to see security contexts formatted differently (e.g. printing the
>>>>>>>> SELinux label vs printing the AppArmor label), right?
>>>>>>> That is correct.
>>>>>>>
>>>>>>>> But still, I don't think you can pull that information from the
>>>>>>>> receiving task. Maybe the easiest solution would be to also store that
>>>>>>>> in the creds? Or you'd have to manually grab that information when
>>>>>>>> /dev/binder is opened.
>>>>>>> I'm storing the information in the task security blob because that's
>>>>>>> the appropriate scope. Today the LSM hook is given both task_struct's.
>>>>>> Which is wrong, because you have no idea who the semantic "recipient
>>>>>> task" is - any task that has a mapping of the binder fd can
>>>>>> effectively receive transactions from it.
>>>>>>
>>>>>> (And the current "sender task" is also wrong, because binder looks at
>>>>>> the task that opened the binder device, not the task currently
>>>>>> performing the action.)
>>>>> I'm confused. Are you saying that the existing binder code is
>>>>> completely broken? Are you saying that neither "task" is correct?
>>>> Yeah, basically
>>> Well, hot biscuits and gravy!
>>>
>>>>  - but luckily the actual impact this has is limited by
>>>> the transitions that SELinux permits. If domain1 has no way to
>>>> transition to domain2, then it can't abuse this bug to pretend to be
>>>> domain2. I do have a reproducer that lets Android's "shell" domain
>>>> send a binder transaction that appears to come from "runas", but
>>>> luckily "runas" has no interesting privileges with regards to binder,
>>>> so that's not exploitable.
>>> You're counting on the peculiarities of the SELinux policy you're
>>> assuming is used to mask the fact that the hook isn't really doing
>>> what it is supposed to?  Ouch.
>> I'm not saying I like the current situation - I do think that this
>> needs to change. I'm just saying it probably isn't *exploitable*, and
>> exploitability often hinges on these little circumstantial details.
>>
>>>>> How does passing the creds from the wrong tasks "fix" the problem?
>>>> This patch is not passing the creds from the "wrong" tasks at all. It
>>>> relies on the basic idea that when a security context opens a
>>>> resource, and then hands that resource to another context for
>>>> read/write operations, then you can effectively treat this as a
>>>> delegation of privileges from the original opener, and perform access
>>>> checks against the credentials using which the resource was opened.
>>> OK. I can understand that without endorsing it.
>>>
>>>> In particular, we already have those semantics in the core kernel for
>>>> ->read() and ->write() VFS operations - they are *not allowed* to look
>>>> at the credentials of the caller, and if they want to make security
>>>> checks, they have to instead check against file->f_cred, which are the
>>>> credentials using which the file was originally opened. (Yes, some
>>>> places still get that wrong.) Passing a file descriptor to another
>>>> task is a delegation of access, and the other task can then call
>>>> syscalls like read() / write() / mmap() on the file descriptor without
>>>> needing to have any access to the underlying file.
>>> A mechanism sufficiently entrenched.
>> It's not just "entrenched", it is a fundamental requirement for being
>> able to use file descriptor passing with syscalls like write(). If
>> task A gives a file descriptor to task B, then task B must be able to
>> write() to that FD without having to worry that the FD actually refers
>> to some sort of special file that interprets the written data as some
>> type of command, or something like that, and that this leads to task B
>> unknowingly passing through access checks.
>>
>>>> You can't really attribute binder transactions to specific tasks that
>>>> are actually involved in the specific transaction, neither on the
>>>> sending side nor on the receiving side, because binder is built around
>>>> passing data through memory mappings. Memory mappings can be accessed
>>>> by multiple tasks, and even a task that does not currently have it
>>>> mapped could e.g. map it at a later time. And on top of that you have
>>>> the problem that the receiving task might also go through privileged
>>>> execve() transitions.
>>> OK. I'm curious now as to why the task_struct was being passed to the
>>> hook in the first place.
>> Probably because that's what most other LSM hooks looked like and the
>> authors/reviewers of the patch didn't realize that this model doesn't
>> really work for binder? FWIW, these hooks were added in commit
>> 79af73079d75 ("Add security hooks to binder and implement the hooks
>> for SELinux."). The commit message also just talks about "processes".
> Note that in the same code path (binder_transaction), sender_euid is
> set from proc->tsk and security_ctx is based on proc->tsk. If we are
> changing the hooks to operate on the opener cred, then presumably we
> should be doing that for sender_euid and replace the
> security_task_getsecid_obj() call with security_cred_getsecid()?
>
> NB Mandatory Access Control doesn't allow uncontrolled delegation,
> hence typically checks against the subject credential either at
> delegation/transfer or use or both. That's true in other places too,
> e.g. file_permission, socket_sendmsg.

Terrific. Now I'm even less convinced that either the proposed change
or the existing code make sense. It's also disturbing that the change
log claims that the reason for the change is fix a race condition when
in fact it changes the data being sent to the hook completely. I, for one,
had assumed that the cred being passed was the cred from the task. There
is certainly nothing in the description to make me think otherwise.


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
