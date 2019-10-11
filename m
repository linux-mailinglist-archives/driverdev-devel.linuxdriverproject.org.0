Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D3CAD4A27
	for <lists+driverdev-devel@lfdr.de>; Sat, 12 Oct 2019 00:00:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 75A3988993;
	Fri, 11 Oct 2019 22:00:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cQ61xAjbY5mY; Fri, 11 Oct 2019 22:00:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1820C88884;
	Fri, 11 Oct 2019 22:00:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C605F1BF376
 for <devel@linuxdriverproject.org>; Fri, 11 Oct 2019 22:00:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B6026880D2
 for <devel@linuxdriverproject.org>; Fri, 11 Oct 2019 22:00:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JRl0ICe1YJlJ for <devel@linuxdriverproject.org>;
 Fri, 11 Oct 2019 22:00:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com
 [209.85.210.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2D76288157
 for <devel@driverdev.osuosl.org>; Fri, 11 Oct 2019 22:00:10 +0000 (UTC)
Received: by mail-ot1-f65.google.com with SMTP id g13so9226913otp.8
 for <devel@driverdev.osuosl.org>; Fri, 11 Oct 2019 15:00:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4kBqBz6rnFSFfuZHqLpun5H5uvkXqj6EuvpO6iNeDwA=;
 b=fp2ZaOBTe90kR7DBdaGhqYYUOG6qV/Agft5TXYbVYec7hjbScRECxJuua8NFPUkL+6
 dgi3TQb5X1OeLg3nTH/JEVL16geKUJouQzyUHHgXvASsnRz5fHaqEYKqpYfGwhIwOKLH
 +lsxGDc4kZpR/VVDGjlCnPdwanSbj3+JgrvDIUzA+nHKu8znHKTLR6XzbbvVrhGKQknR
 qioJ1baJknFMYocXQRHYdfrfdNBR/gZu5USkoo8qy/JeUdbDlM1kBE6+XQ0lWo/lOnOR
 xGC+43zKkBztc3Ey2+uWdweV+ZsF1ZNcuOxB+FMBvSL8Pd0iqhJQluafXuh8ANb7N0+R
 bePA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4kBqBz6rnFSFfuZHqLpun5H5uvkXqj6EuvpO6iNeDwA=;
 b=ujU6T6woNMIL+ORsGkKUvcmLry2FD70rDpydB/kIN5P8U+ca+a7osgTf+V5j+K3Mq3
 wB7Qkx0g97uKluMawGYsHlfwF7hWwav0yN1jfHIbjOrJcpc7aaGHjY8npFZEO1IyO+hA
 4vfDMntmMtGdV1hDCvbLWkpd5dLySQkhIDOPoubP5ELw989zO2P0wfEk37UnUS/3m91w
 szGnM6ny2rPS8xrz19i1HIXPIToqSTamWiq1Z6gQGq6dZ75mdZa0BFpZQvxdSXFspEMf
 SNZRRB26l83b25p8VcPLFcbg6xEtiQ3Tc70rs7TphUecbwag6naJ6APRr3SQB3ak1XRT
 yEZA==
X-Gm-Message-State: APjAAAWvTVIDfamduaW6cFAUgvYdfwrK8nealYl021K9OsikSPMTr64y
 AdMlSlXYu72AXjW2eLipvUBlCJGm4VWWdK+Wf1KiMA==
X-Google-Smtp-Source: APXvYqwptWuJ7i5iyfIGUOY9Vd3jvEsJSd7h4YA0dsEMYVn/tAfVjorZ3sRlt2h4PwSYtjN8dITuKpBa8xUbgb71G7U=
X-Received: by 2002:a05:6830:10cc:: with SMTP id
 z12mr6874771oto.110.1570831208822; 
 Fri, 11 Oct 2019 15:00:08 -0700 (PDT)
MIME-Version: 1.0
References: <20190715191804.112933-1-hridya@google.com>
In-Reply-To: <20190715191804.112933-1-hridya@google.com>
From: Jann Horn <jannh@google.com>
Date: Fri, 11 Oct 2019 23:59:42 +0200
Message-ID: <CAG48ez0dSd4q06YXOnkzmM8BkfQGTtYE6j60_YRdC5fmrTm8jw@mail.gmail.com>
Subject: Re: [PATCH] binder: prevent transactions to context manager from its
 own process.
To: Hridya Valsaraju <hridya@google.com>, Todd Kjos <tkjos@android.com>
Content-Type: multipart/mixed; boundary="000000000000350cdc0594a9a4ad"
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
Cc: "open list:ANDROID DRIVERS" <devel@driverdev.osuosl.org>,
 kernel-team <kernel-team@android.com>,
 syzbot+8b3c354d33c4ac78bfad@syzkaller.appspotmail.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kernel list <linux-kernel@vger.kernel.org>,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 Joel Fernandes <joel@joelfernandes.org>, Martijn Coenen <maco@android.com>,
 Christian Brauner <christian@brauner.io>
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

--000000000000350cdc0594a9a4ad
Content-Type: text/plain; charset="UTF-8"

On Mon, Jul 15, 2019 at 9:18 PM Hridya Valsaraju <hridya@google.com> wrote:
> Currently, a transaction to context manager from its own process
> is prevented by checking if its binder_proc struct is the same as
> that of the sender. However, this would not catch cases where the
> process opens the binder device again and uses the new fd to send
> a transaction to the context manager.
>
> Reported-by: syzbot+8b3c354d33c4ac78bfad@syzkaller.appspotmail.com
> Signed-off-by: Hridya Valsaraju <hridya@google.com>
> ---
>  drivers/android/binder.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/android/binder.c b/drivers/android/binder.c
> index e4d25ebec5be..89b9cedae088 100644
> --- a/drivers/android/binder.c
> +++ b/drivers/android/binder.c
> @@ -3138,7 +3138,7 @@ static void binder_transaction(struct binder_proc *proc,
>                         else
>                                 return_error = BR_DEAD_REPLY;
>                         mutex_unlock(&context->context_mgr_node_lock);
> -                       if (target_node && target_proc == proc) {
> +                       if (target_node && target_proc->pid == proc->pid) {
>                                 binder_user_error("%d:%d got transaction to context manager from process owning it\n",
>                                                   proc->pid, thread->pid);
>                                 return_error = BR_FAILED_REPLY;

This isn't a valid fix.

For context, the syzkaller report at
<https://lore.kernel.org/lkml/000000000000afe2c70589526668@google.com/>
triggered this WARN_ON() in binder_transaction_buffer_release() in the
BINDER_TYPE_FD case, which Todd added in 44d8047f1d87 ("binder: use
standard functions to allocate fds"):

    case BINDER_TYPE_FD: {
        /*
         * No need to close the file here since user-space
         * closes it for for successfully delivered
         * transactions. For transactions that weren't
         * delivered, the new fd was never allocated so
         * there is no need to close and the fput on the
         * file is done when the transaction is torn
         * down.
         */
        WARN_ON(failed_at &&
            proc->tsk == current->group_leader);
    } break;

That check seems to be attempting to detect cases where
binder_transaction() fails and rolls back a partial transaction sent
by a process to itself. I think the intent there is probably to catch
cases that would cause the check in the BINDER_TYPE_FDA case below to
trip up?

About this fix: This prevents a task from sending binder transactions
to the context manager if they're running in the same process. (By the
way, I don't understand why that's a problem, conceptually.) But you
can still open a binder device twice (binder_proc instances A and B)
from a process that does not own the context manager instance, pass a
binder object from A to the context manager, let the context manager
pass it to B, and then A can transact with the same-process B. So this
merely looks fixed because syzkaller isn't able to construct such a
complicated testcase. (I think you could also let A receive a handle
to itself and then transact with itself, but I haven't tested that.)


I think this fix should probably be reverted (unless you actually want
to prevent intra-process transactions, which would probably require a
bunch of ugly extra checks), the WARN_ON() should be removed, and the
BINDER_TYPE_FDA case should be adjusted to make its decision based on
a flag passed from its parent instead of guessing based on what
`current` is. Since it looks like because of this bug, an aborted
intra-process transaction containing BINDER_TYPE_FDA (e.g. via the
err_translate_failed or err_dead_proc_or_thread cases) will cause file
descriptors to unexpectedly be released in the caller, leading to a
file-descriptor use-after-free in userspace, the fix should probably
also be stable-backported. (It's probably not a huge problem in
practice though, given that only hwbinder uses BINDER_TYPE_FDA and you
need to have an intra-process transaction at the same time as
something like a thread going away, or something like that? I don't
fully understand the failure conditions for binder transactions.)


Here's a reproducer for triggering the WARN_ON() on git master. The
helper files binder.c and binder.h are attached.

=================
#define _GNU_SOURCE
#include <unistd.h>
#include <stdio.h>
#include <stdint.h>
#include <err.h>
#include <stdlib.h>
#include <sys/signal.h>
#include <sys/prctl.h>
#include "binder.h"

#define BINDER_PATH "/dev/binder/binder"

static void do_exit(int dummy) {
  _exit(1);
}

static uint32_t ref_a_from_manager;

int my_handler(struct binder_state *bs, struct binder_transaction_data *txn,
               struct binder_io *msg, struct binder_io *reply) {
  if (txn->code == 1) {
    ref_a_from_manager = bio_get_ref(msg);
    if (ref_a_from_manager == 0)
      errx(1, "manager received bogus message 1");
    binder_acquire(bs, ref_a_from_manager);
    printf("manager received handle 0x%x from A\n", ref_a_from_manager);
    return 0;
  } else if (txn->code == 2) {
    if (ref_a_from_manager == 0)
      errx(1, "B asked too early");
    bio_put_ref(reply, ref_a_from_manager);
    printf("manager is sending handle to B\n");
    return 0;
  } else {
    errx(1, "manager got unexpected message");
  }
}

int main(void) {
  if (signal(SIGCHLD, do_exit))
    err(1, "signal");

  struct binder_state *bs_mgr = binder_open(BINDER_PATH, 0x400000);
  if (bs_mgr == NULL)
    err(1, "binder_open()");
  if (binder_become_context_manager(bs_mgr))
    err(1, "become mgr");

  pid_t child = fork();
  if (child == -1)
    err(1, "fork");
  if (child == 0) {
    prctl(PR_SET_PDEATHSIG, SIGKILL);
    if (getppid() == 1) exit(0);

    /* create endpoint A and send message with handle to manager */
    {
      struct binder_state *bs_a = binder_open(BINDER_PATH, 0x400000);
      if (bs_a == NULL) err(1, "binder_open()");

        struct binder_io msg;
        struct binder_io reply;
        char data[0x1000];
        bio_init(&msg, data, sizeof(data), 4);
        bio_put_obj(&msg, (void*)1);
        if (binder_call(bs_a, &msg, &reply, 0, 1/*code*/))
          errx(1, "binder_call");
        binder_done(bs_a, &msg, &reply);
    }

    /* create endpoint B and retrieve handle from manager */
    struct binder_state *bs_b;
    uint32_t ref_a_from_b;
    {
      bs_b = binder_open(BINDER_PATH, 0x400000);
      if (bs_b == NULL) err(1, "binder_open()");

        struct binder_io msg;
        struct binder_io reply;
        char data[0x1000];
        bio_init(&msg, data, sizeof(data), 4);
        if (binder_call(bs_b, &msg, &reply, 0, 2/*code*/))
          errx(1, "binder_call");
        ref_a_from_b = bio_get_ref(&reply);
        if (ref_a_from_b == 0)
          errx(1, "B received bogus reply");
        binder_acquire(bs_b, ref_a_from_b);
        printf("B received handle 0x%x from manager\n", ref_a_from_b);
        binder_done(bs_b, &msg, &reply);
    }

    /* let B send a message with a valid FD and an invalid FD to A */
    {
      struct binder_io msg;
      struct binder_io reply;
      char data[0x1000];
      bio_init(&msg, data, sizeof(data), 4);
      bio_put_fd(&msg, 0); /*valid*/
      bio_put_fd(&msg, -1); /*invalid*/
      if (binder_call(bs_b, &msg, &reply, ref_a_from_b, 3/*code*/))
        errx(1, "binder_call");
    }

    exit(0);
  }

  binder_loop(bs_mgr, my_handler);
}
=================

--000000000000350cdc0594a9a4ad
Content-Type: text/x-chdr; charset="US-ASCII"; name="binder.h"
Content-Disposition: attachment; filename="binder.h"
Content-Transfer-Encoding: base64
Content-ID: <f_k1mm89221>
X-Attachment-Id: f_k1mm89221

LyogQ29weXJpZ2h0IDIwMDggVGhlIEFuZHJvaWQgT3BlbiBTb3VyY2UgUHJvamVjdAogKi8KI2lm
bmRlZiBfQklOREVSX0hfCiNkZWZpbmUgX0JJTkRFUl9IXwoKI2luY2x1ZGUgPHN5cy9pb2N0bC5o
PgojaW5jbHVkZSA8L2gvYW9zcC13YWxsZXllL2Jpb25pYy9saWJjL2tlcm5lbC91YXBpL2xpbnV4
L2FuZHJvaWQvYmluZGVyLmg+CgpzdHJ1Y3QgYmluZGVyX3N0YXRlCnsKICAgIGludCBmZDsKICAg
IHZvaWQgKm1hcHBlZDsKICAgIHNpemVfdCBtYXBzaXplOwp9OwpzdHJ1Y3QgYmluZGVyX2lvCnsK
ICAgIGNoYXIgKmRhdGE7ICAgICAgICAgICAgLyogcG9pbnRlciB0byByZWFkL3dyaXRlIGZyb20g
Ki8KICAgIGJpbmRlcl9zaXplX3QgKm9mZnM7ICAgLyogYXJyYXkgb2Ygb2Zmc2V0cyAqLwogICAg
c2l6ZV90IGRhdGFfYXZhaWw7ICAgICAvKiBieXRlcyBhdmFpbGFibGUgaW4gZGF0YSBidWZmZXIg
Ki8KICAgIHNpemVfdCBvZmZzX2F2YWlsOyAgICAgLyogZW50cmllcyBhdmFpbGFibGUgaW4gb2Zm
c2V0cyBhcnJheSAqLwogICAgY2hhciAqZGF0YTA7ICAgICAgICAgICAvKiBzdGFydCBvZiBkYXRh
IGJ1ZmZlciAqLwogICAgYmluZGVyX3NpemVfdCAqb2ZmczA7ICAvKiBzdGFydCBvZiBvZmZzZXRz
IGJ1ZmZlciAqLwogICAgdWludDMyX3QgZmxhZ3M7CiAgICB1aW50MzJfdCB1bnVzZWQ7CiAgICB1
aW50NjRfdCBidWZmZXJzX3NpemU7Cn07CnN0cnVjdCBiaW5kZXJfZGVhdGggewogICAgdm9pZCAo
KmZ1bmMpKHN0cnVjdCBiaW5kZXJfc3RhdGUgKmJzLCB2b2lkICpwdHIpOwogICAgdm9pZCAqcHRy
Owp9OwovKiB0aGUgb25lIG1hZ2ljIGhhbmRsZSAqLwojZGVmaW5lIEJJTkRFUl9TRVJWSUNFX01B
TkFHRVIgIDBVCiNkZWZpbmUgU1ZDX01HUl9OQU1FICJhbmRyb2lkLm9zLklTZXJ2aWNlTWFuYWdl
ciIKZW51bSB7CiAgICAvKiBNdXN0IG1hdGNoIGRlZmluaXRpb25zIGluIElCaW5kZXIuaCBhbmQg
SVNlcnZpY2VNYW5hZ2VyLmggKi8KICAgIFBJTkdfVFJBTlNBQ1RJT04gID0gQl9QQUNLX0NIQVJT
KCdfJywnUCcsJ04nLCdHJyksCiAgICBTVkNfTUdSX0dFVF9TRVJWSUNFID0gMSwKICAgIFNWQ19N
R1JfQ0hFQ0tfU0VSVklDRSwKICAgIFNWQ19NR1JfQUREX1NFUlZJQ0UsCiAgICBTVkNfTUdSX0xJ
U1RfU0VSVklDRVMsCn07CnR5cGVkZWYgaW50ICgqYmluZGVyX2hhbmRsZXIpKHN0cnVjdCBiaW5k
ZXJfc3RhdGUgKmJzLAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgYmluZGVy
X3RyYW5zYWN0aW9uX2RhdGEgKnR4biwKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc3Ry
dWN0IGJpbmRlcl9pbyAqbXNnLAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3Qg
YmluZGVyX2lvICpyZXBseSk7CnN0cnVjdCBiaW5kZXJfc3RhdGUgKmJpbmRlcl9vcGVuKGNoYXIg
KmRldmljZSwgc2l6ZV90IG1hcHNpemUpOwp2b2lkIGJpbmRlcl9jbG9zZShzdHJ1Y3QgYmluZGVy
X3N0YXRlICpicyk7Ci8qIGluaXRpYXRlIGEgYmxvY2tpbmcgYmluZGVyIGNhbGwKICogLSByZXR1
cm5zIHplcm8gb24gc3VjY2VzcwogKi8KaW50IGJpbmRlcl9jYWxsKHN0cnVjdCBiaW5kZXJfc3Rh
dGUgKmJzLAogICAgICAgICAgICAgICAgc3RydWN0IGJpbmRlcl9pbyAqbXNnLCBzdHJ1Y3QgYmlu
ZGVyX2lvICpyZXBseSwKICAgICAgICAgICAgICAgIHVpbnQzMl90IHRhcmdldCwgdWludDMyX3Qg
Y29kZSk7CmludCBiaW5kZXJfY2FsbF9hc3luYyhzdHJ1Y3QgYmluZGVyX3N0YXRlICpicywKICAg
ICAgICAgICAgICAgIHN0cnVjdCBiaW5kZXJfaW8gKm1zZywKICAgICAgICAgICAgICAgIHVpbnQz
Ml90IHRhcmdldCwgdWludDMyX3QgY29kZSk7CmludCBiaW5kZXJfcmVhZF9yZXBseShzdHJ1Y3Qg
YmluZGVyX3N0YXRlKiBicywKICAgICAgICAgICAgICAgIHN0cnVjdCBiaW5kZXJfaW8qIHJlcGx5
KTsKaW50IGJpbmRlcl9yZWFkX3JlcGx5X2hhbmRsZXIoc3RydWN0IGJpbmRlcl9zdGF0ZSogYnMs
CiAgICAgICAgICAgICAgICBzdHJ1Y3QgYmluZGVyX2lvKiByZXBseSwgYmluZGVyX2hhbmRsZXIg
ZnVuYyk7Ci8qIHJlbGVhc2UgYW55IHN0YXRlIGFzc29jaWF0ZSB3aXRoIHRoZSBiaW5kZXJfaW8K
ICogLSBjYWxsIG9uY2UgYW55IG5lY2Vzc2FyeSBkYXRhIGhhcyBiZWVuIGV4dHJhY3RlZCBmcm9t
IHRoZQogKiAgIGJpbmRlcl9pbyBhZnRlciBiaW5kZXJfY2FsbCgpIHJldHVybnMKICogLSBjYW4g
c2FmZWx5IGJlIGNhbGxlZCBldmVuIGlmIGJpbmRlcl9jYWxsKCkgZmFpbHMKICovCnZvaWQgYmlu
ZGVyX2RvbmUoc3RydWN0IGJpbmRlcl9zdGF0ZSAqYnMsCiAgICAgICAgICAgICAgICAgc3RydWN0
IGJpbmRlcl9pbyAqbXNnLCBzdHJ1Y3QgYmluZGVyX2lvICpyZXBseSk7CgovKiBtYW5pcHVsYXRl
IHN0cm9uZyByZWZlcmVuY2VzICovCnZvaWQgYmluZGVyX2FjcXVpcmUoc3RydWN0IGJpbmRlcl9z
dGF0ZSAqYnMsIHVpbnQzMl90IHRhcmdldCk7CnZvaWQgYmluZGVyX3JlbGVhc2Uoc3RydWN0IGJp
bmRlcl9zdGF0ZSAqYnMsIHVpbnQzMl90IHRhcmdldCk7CnZvaWQgYmluZGVyX2luY3JlZnMoc3Ry
dWN0IGJpbmRlcl9zdGF0ZSAqYnMsIHVpbnQzMl90IHRhcmdldCk7CnZvaWQgYmluZGVyX2RlY3Jl
ZnMoc3RydWN0IGJpbmRlcl9zdGF0ZSAqYnMsIHVpbnQzMl90IHRhcmdldCk7CnZvaWQgYmluZGVy
X2xpbmtfdG9fZGVhdGgoc3RydWN0IGJpbmRlcl9zdGF0ZSAqYnMsIHVpbnQzMl90IHRhcmdldCwg
c3RydWN0IGJpbmRlcl9kZWF0aCAqZGVhdGgpOwp2b2lkIGJpbmRlcl9sb29wKHN0cnVjdCBiaW5k
ZXJfc3RhdGUgKmJzLCBiaW5kZXJfaGFuZGxlciBmdW5jKTsKaW50IGJpbmRlcl9iZWNvbWVfY29u
dGV4dF9tYW5hZ2VyKHN0cnVjdCBiaW5kZXJfc3RhdGUgKmJzKTsKLyogYWxsb2NhdGUgYSBiaW5k
ZXJfaW8sIHByb3ZpZGluZyBhIHN0YWNrLWFsbG9jYXRlZCB3b3JraW5nCiAqIGJ1ZmZlciwgc2l6
ZSBvZiB0aGUgd29ya2luZyBidWZmZXIsIGFuZCBob3cgbWFueSBvYmplY3QKICogb2Zmc2V0IGVu
dHJpZXMgdG8gcmVzZXJ2ZSBmcm9tIHRoZSBidWZmZXIKICovCnZvaWQgYmlvX2luaXQoc3RydWN0
IGJpbmRlcl9pbyAqYmlvLCB2b2lkICpkYXRhLAogICAgICAgICAgIHNpemVfdCBtYXhkYXRhLCBz
aXplX3QgbWF4b2JqZWN0cyk7CnZvaWQgYmlvX3B1dF9vYmooc3RydWN0IGJpbmRlcl9pbyAqYmlv
LCB2b2lkICpwdHIpOwp2b2lkIGJpb19wdXRfZmQoc3RydWN0IGJpbmRlcl9pbyAqYmlvLCBpbnQg
ZmQpOwp2b2lkIGJpb19wdXRfcmVmKHN0cnVjdCBiaW5kZXJfaW8gKmJpbywgdWludDMyX3QgaGFu
ZGxlKTsKdm9pZCBiaW9fcHV0X3VpbnQzMihzdHJ1Y3QgYmluZGVyX2lvICpiaW8sIHVpbnQzMl90
IG4pOwp2b2lkIGJpb19wdXRfc3RyaW5nMTYoc3RydWN0IGJpbmRlcl9pbyAqYmlvLCBjb25zdCB1
aW50MTZfdCAqc3RyKTsKdm9pZCBiaW9fcHV0X3N0cmluZzE2X3goc3RydWN0IGJpbmRlcl9pbyAq
YmlvLCBjb25zdCBjaGFyICpfc3RyKTsKdm9pZCBiaW9fcHV0X3N0cmluZzhfeChzdHJ1Y3QgYmlu
ZGVyX2lvICpiaW8sIGNvbnN0IGNoYXIgKl9zdHIpOwp2b2lkIGJpb19wdXRfY3N0cmluZyhzdHJ1
Y3QgYmluZGVyX2lvICpiaW8sIGNvbnN0IGNoYXIgKl9zdHIpOwp1aW50MzJfdCBiaW9fZ2V0X3Vp
bnQzMihzdHJ1Y3QgYmluZGVyX2lvICpiaW8pOwp1aW50MTZfdCAqYmlvX2dldF9zdHJpbmcxNihz
dHJ1Y3QgYmluZGVyX2lvICpiaW8sIHNpemVfdCAqc3opOwpjaGFyICpiaW9fZ2V0X3N0cmluZzgo
c3RydWN0IGJpbmRlcl9pbyAqYmlvLCBzaXplX3QgKnN6KTsKdWludDMyX3QgYmlvX2dldF9yZWYo
c3RydWN0IGJpbmRlcl9pbyAqYmlvKTsKdWludDMyX3QgYmlvX2dldF9yZWZfY29va2llKHN0cnVj
dCBiaW5kZXJfaW8gKmJpbywgdWludDY0X3QqIGNvb2tpZSk7CnZvaWQgYmlvX3B1dF9idWYoc3Ry
dWN0IGJpbmRlcl9pbyAqYmlvLCB2b2lkICpkYXRhLCBzaXplX3QgbGVuLCBpbnQgKmJ1Zl9pZCk7
CnZvaWQgYmlvX3B1dF9zdWJfYnVmKHN0cnVjdCBiaW5kZXJfaW8gKmJpbywgaW50IHBhcmVudF9p
ZCwgaW50IHBhcmVudF9vZmZzZXQsIHZvaWQgKmRhdGEsIHNpemVfdCBsZW4sIGludCAqYnVmX2lk
KTsKCmludCBiaW5kZXJfd3JpdGUoc3RydWN0IGJpbmRlcl9zdGF0ZSAqYnMsIHZvaWQgKmRhdGEs
IHNpemVfdCBsZW4pOwojZW5kaWY=
--000000000000350cdc0594a9a4ad
Content-Type: text/x-csrc; charset="US-ASCII"; name="binder.c"
Content-Disposition: attachment; filename="binder.c"
Content-Transfer-Encoding: base64
Content-ID: <f_k1mm891p0>
X-Attachment-Id: f_k1mm891p0

LyogQ29weXJpZ2h0IDIwMDggVGhlIEFuZHJvaWQgT3BlbiBTb3VyY2UgUHJvamVjdAogKi8KI2lu
Y2x1ZGUgPGludHR5cGVzLmg+CiNpbmNsdWRlIDxzdGRib29sLmg+CiNpbmNsdWRlIDxzdGRpby5o
PgojaW5jbHVkZSA8c3RkbGliLmg+CiNpbmNsdWRlIDxzdHJpbmcuaD4KI2luY2x1ZGUgPGVycm5v
Lmg+CiNpbmNsdWRlIDx1bmlzdGQuaD4KI2luY2x1ZGUgPGZjbnRsLmg+CiNpbmNsdWRlIDxlcnIu
aD4KI2luY2x1ZGUgPHN5cy9tbWFuLmg+CiNpbmNsdWRlIDxzeXMvd2FpdC5oPgojaW5jbHVkZSAi
YmluZGVyLmgiCiNkZWZpbmUgTUFYX0JJT19TSVpFICgxIDw8IDMwKQojZGVmaW5lIFRSQUNFIDAK
I2RlZmluZSBMT0dfVEFHICJCaW5kZXIiCiNkZWZpbmUgQUxPR0UoLi4uKQojZGVmaW5lIEFMT0dX
KC4uLikKI2RlZmluZSBBTE9HRCguLi4pCnZvaWQgYmlvX2luaXRfZnJvbV90eG4oc3RydWN0IGJp
bmRlcl9pbyAqaW8sIHN0cnVjdCBiaW5kZXJfdHJhbnNhY3Rpb25fZGF0YSAqdHhuKTsKI2lmIFRS
QUNFCnZvaWQgaGV4ZHVtcCh2b2lkICpfZGF0YSwgc2l6ZV90IGxlbikKewogICAgdW5zaWduZWQg
Y2hhciAqZGF0YSA9IF9kYXRhOwogICAgc2l6ZV90IGNvdW50OwogICAgZm9yIChjb3VudCA9IDA7
IGNvdW50IDwgbGVuOyBjb3VudCsrKSB7CiAgICAgICAgaWYgKChjb3VudCAmIDE1KSA9PSAwKQog
ICAgICAgICAgICBmcHJpbnRmKHN0ZGVyciwiJTA0enU6IiwgY291bnQpOwogICAgICAgIGZwcmlu
dGYoc3RkZXJyLCIgJTAyeCAlYyIsICpkYXRhLAogICAgICAgICAgICAgICAgKCpkYXRhIDwgMzIp
IHx8ICgqZGF0YSA+IDEyNikgPyAnLicgOiAqZGF0YSk7CiAgICAgICAgZGF0YSsrOwogICAgICAg
IGlmICgoY291bnQgJiAxNSkgPT0gMTUpCiAgICAgICAgICAgIGZwcmludGYoc3RkZXJyLCJcbiIp
OwogICAgfQogICAgaWYgKChjb3VudCAmIDE1KSAhPSAwKQogICAgICAgIGZwcmludGYoc3RkZXJy
LCJcbiIpOwp9CnZvaWQgYmluZGVyX2R1bXBfdHhuKHN0cnVjdCBiaW5kZXJfdHJhbnNhY3Rpb25f
ZGF0YSAqdHhuKQp7CiAgICBzdHJ1Y3QgZmxhdF9iaW5kZXJfb2JqZWN0ICpvYmo7CiAgICBiaW5k
ZXJfc2l6ZV90ICpvZmZzID0gKGJpbmRlcl9zaXplX3QgKikodWludHB0cl90KXR4bi0+ZGF0YS5w
dHIub2Zmc2V0czsKICAgIHNpemVfdCBjb3VudCA9IHR4bi0+b2Zmc2V0c19zaXplIC8gc2l6ZW9m
KGJpbmRlcl9zaXplX3QpOwogICAgZnByaW50ZihzdGRlcnIsIiAgdGFyZ2V0ICUwMTYiUFJJeDY0
IiAgY29va2llICUwMTYiUFJJeDY0IiAgY29kZSAlMDh4ICBmbGFncyAlMDh4XG4iLAogICAgICAg
ICAgICAodWludDY0X3QpdHhuLT50YXJnZXQucHRyLCAodWludDY0X3QpdHhuLT5jb29raWUsIHR4
bi0+Y29kZSwgdHhuLT5mbGFncyk7CiAgICBmcHJpbnRmKHN0ZGVyciwiICBwaWQgJThkICB1aWQg
JThkICBkYXRhICUiUFJJdTY0IiAgb2ZmcyAlIlBSSXU2NCJcbiIsCiAgICAgICAgICAgIHR4bi0+
c2VuZGVyX3BpZCwgdHhuLT5zZW5kZXJfZXVpZCwgKHVpbnQ2NF90KXR4bi0+ZGF0YV9zaXplLCAo
dWludDY0X3QpdHhuLT5vZmZzZXRzX3NpemUpOwogICAgaGV4ZHVtcCgodm9pZCAqKSh1aW50cHRy
X3QpdHhuLT5kYXRhLnB0ci5idWZmZXIsIHR4bi0+ZGF0YV9zaXplKTsKICAgIHdoaWxlIChjb3Vu
dC0tKSB7CiAgICAgICAgb2JqID0gKHN0cnVjdCBmbGF0X2JpbmRlcl9vYmplY3QgKikgKCgoY2hh
ciopKHVpbnRwdHJfdCl0eG4tPmRhdGEucHRyLmJ1ZmZlcikgKyAqb2ZmcysrKTsKICAgICAgICBm
cHJpbnRmKHN0ZGVyciwiICAtIHR5cGUgJTA4eCAgZmxhZ3MgJTA4eCAgcHRyICUwMTYiUFJJeDY0
IiAgY29va2llICUwMTYiUFJJeDY0IlxuIiwKICAgICAgICAgICAgICAgIG9iai0+aGRyLnR5cGUs
IG9iai0+ZmxhZ3MsICh1aW50NjRfdClvYmotPmJpbmRlciwgKHVpbnQ2NF90KW9iai0+Y29va2ll
KTsKICAgIH0KfQojZGVmaW5lIE5BTUUobikgY2FzZSBuOiByZXR1cm4gI24KY29uc3QgY2hhciAq
Y21kX25hbWUodWludDMyX3QgY21kKQp7CiAgICBzd2l0Y2goY21kKSB7CiAgICAgICAgTkFNRShC
Ul9OT09QKTsKICAgICAgICBOQU1FKEJSX1RSQU5TQUNUSU9OX0NPTVBMRVRFKTsKICAgICAgICBO
QU1FKEJSX0lOQ1JFRlMpOwogICAgICAgIE5BTUUoQlJfQUNRVUlSRSk7CiAgICAgICAgTkFNRShC
Ul9SRUxFQVNFKTsKICAgICAgICBOQU1FKEJSX0RFQ1JFRlMpOwogICAgICAgIE5BTUUoQlJfVFJB
TlNBQ1RJT04pOwogICAgICAgIE5BTUUoQlJfUkVQTFkpOwogICAgICAgIE5BTUUoQlJfRkFJTEVE
X1JFUExZKTsKICAgICAgICBOQU1FKEJSX0RFQURfUkVQTFkpOwogICAgICAgIE5BTUUoQlJfREVB
RF9CSU5ERVIpOwogICAgZGVmYXVsdDogcmV0dXJuICI/Pz8iOwogICAgfQp9CiNlbHNlCiNkZWZp
bmUgaGV4ZHVtcChhLGIpIGRve30gd2hpbGUgKDApCiNkZWZpbmUgYmluZGVyX2R1bXBfdHhuKHR4
bikgIGRve30gd2hpbGUgKDApCiNlbmRpZgojZGVmaW5lIEJJT19GX1NIQVJFRCAgICAweDAxICAv
KiBuZWVkcyB0byBiZSBidWZmZXIgZnJlZWQgKi8KI2RlZmluZSBCSU9fRl9PVkVSRkxPVyAgMHgw
MiAgLyogcmFuIG91dCBvZiBzcGFjZSAqLwojZGVmaW5lIEJJT19GX0lPRVJST1IgICAweDA0CiNk
ZWZpbmUgQklPX0ZfTUFMTE9DRUQgIDB4MDggIC8qIG5lZWRzIHRvIGJlIGZyZWUoKSdkICovCnN0
cnVjdCBiaW5kZXJfc3RhdGUgKmJpbmRlcl9vcGVuKGNoYXIgKmRldmljZSwgc2l6ZV90IG1hcHNp
emUpCnsKICAgIHN0cnVjdCBiaW5kZXJfc3RhdGUgKmJzOwogICAgc3RydWN0IGJpbmRlcl92ZXJz
aW9uIHZlcnM7CiAgICBicyA9IG1hbGxvYyhzaXplb2YoKmJzKSk7CiAgICBpZiAoIWJzKSB7CiAg
ICAgICAgZXJybm8gPSBFTk9NRU07CiAgICAgICAgcmV0dXJuIE5VTEw7CiAgICB9CiAgICBicy0+
ZmQgPSBvcGVuKGRldmljZSwgT19SRFdSIHwgT19DTE9FWEVDKTsKICAgIGlmIChicy0+ZmQgPCAw
KSB7CiAgICAgICAgZnByaW50ZihzdGRlcnIsImJpbmRlcjogY2Fubm90IG9wZW4gZGV2aWNlICgl
cylcbiIsCiAgICAgICAgICAgICAgICBzdHJlcnJvcihlcnJubykpOwogICAgICAgIGdvdG8gZmFp
bF9vcGVuOwogICAgfQogICAgaWYgKChpb2N0bChicy0+ZmQsIEJJTkRFUl9WRVJTSU9OLCAmdmVy
cykgPT0gLTEpIHx8CiAgICAgICAgKHZlcnMucHJvdG9jb2xfdmVyc2lvbiAhPSBCSU5ERVJfQ1VS
UkVOVF9QUk9UT0NPTF9WRVJTSU9OKSkgewogICAgICAgIGZwcmludGYoc3RkZXJyLAogICAgICAg
ICAgICAgICAgImJpbmRlcjoga2VybmVsIGRyaXZlciB2ZXJzaW9uICglZCkgZGlmZmVycyBmcm9t
IHVzZXIgc3BhY2UgdmVyc2lvbiAoJWQpXG4iLAogICAgICAgICAgICAgICAgdmVycy5wcm90b2Nv
bF92ZXJzaW9uLCBCSU5ERVJfQ1VSUkVOVF9QUk9UT0NPTF9WRVJTSU9OKTsKICAgICAgICBnb3Rv
IGZhaWxfb3BlbjsKICAgIH0KICAgIGJzLT5tYXBzaXplID0gbWFwc2l6ZTsKICAgIGJzLT5tYXBw
ZWQgPSBtbWFwKE5VTEwsIG1hcHNpemUsIFBST1RfUkVBRCwgTUFQX1BSSVZBVEUsIGJzLT5mZCwg
MCk7CiAgICBpZiAoYnMtPm1hcHBlZCA9PSBNQVBfRkFJTEVEKSB7CiAgICAgICAgZnByaW50Zihz
dGRlcnIsImJpbmRlcjogY2Fubm90IG1hcCBkZXZpY2UgKCVzKVxuIiwKICAgICAgICAgICAgICAg
IHN0cmVycm9yKGVycm5vKSk7CiAgICAgICAgZ290byBmYWlsX21hcDsKICAgIH0KICAgIGlmICht
YWR2aXNlKGJzLT5tYXBwZWQsIG1hcHNpemUsIE1BRFZfRE9GT1JLKSkgZXJyKDEsICJNQURWX0RP
Rk9SSyIpOwogICAgcmV0dXJuIGJzOwpmYWlsX21hcDoKICAgIGNsb3NlKGJzLT5mZCk7CmZhaWxf
b3BlbjoKICAgIGZyZWUoYnMpOwogICAgcmV0dXJuIE5VTEw7Cn0Kdm9pZCBiaW5kZXJfY2xvc2Uo
c3RydWN0IGJpbmRlcl9zdGF0ZSAqYnMpCnsKICAgIG11bm1hcChicy0+bWFwcGVkLCBicy0+bWFw
c2l6ZSk7CiAgICBjbG9zZShicy0+ZmQpOwogICAgZnJlZShicyk7Cn0KaW50IGJpbmRlcl9iZWNv
bWVfY29udGV4dF9tYW5hZ2VyKHN0cnVjdCBiaW5kZXJfc3RhdGUgKmJzKQp7CiAgICByZXR1cm4g
aW9jdGwoYnMtPmZkLCBCSU5ERVJfU0VUX0NPTlRFWFRfTUdSLCAwKTsKfQppbnQgYmluZGVyX3dy
aXRlKHN0cnVjdCBiaW5kZXJfc3RhdGUgKmJzLCB2b2lkICpkYXRhLCBzaXplX3QgbGVuKQp7CiAg
ICBzdHJ1Y3QgYmluZGVyX3dyaXRlX3JlYWQgYndyOwogICAgaW50IHJlczsKICAgIGJ3ci53cml0
ZV9zaXplID0gbGVuOwogICAgYndyLndyaXRlX2NvbnN1bWVkID0gMDsKICAgIGJ3ci53cml0ZV9i
dWZmZXIgPSAodWludHB0cl90KSBkYXRhOwogICAgYndyLnJlYWRfc2l6ZSA9IDA7CiAgICBid3Iu
cmVhZF9jb25zdW1lZCA9IDA7CiAgICBid3IucmVhZF9idWZmZXIgPSAwOwogICAgcmVzID0gaW9j
dGwoYnMtPmZkLCBCSU5ERVJfV1JJVEVfUkVBRCwgJmJ3cik7CiAgICBpZiAocmVzIDwgMCkgewog
ICAgICAgIGZwcmludGYoc3RkZXJyLCJiaW5kZXJfd3JpdGU6IGlvY3RsIGZhaWxlZCAoJXMpXG4i
LAogICAgICAgICAgICAgICAgc3RyZXJyb3IoZXJybm8pKTsKICAgIH0KICAgIHJldHVybiByZXM7
Cn0Kdm9pZCBiaW5kZXJfc2VuZF9yZXBseShzdHJ1Y3QgYmluZGVyX3N0YXRlICpicywKICAgICAg
ICAgICAgICAgICAgICAgICBzdHJ1Y3QgYmluZGVyX2lvICpyZXBseSwKICAgICAgICAgICAgICAg
ICAgICAgICBiaW5kZXJfdWludHB0cl90IGJ1ZmZlcl90b19mcmVlLAogICAgICAgICAgICAgICAg
ICAgICAgIGludCBzdGF0dXMpCnsKICAgIHByaW50ZigiYmluZGVyX3NlbmRfcmVwbHkoc3RhdHVz
PSVkKVxuIiwgc3RhdHVzKTsKICAgIHN0cnVjdCB7CiAgICAgICAgdWludDMyX3QgY21kX2ZyZWU7
CiAgICAgICAgYmluZGVyX3VpbnRwdHJfdCBidWZmZXI7CiAgICAgICAgdWludDMyX3QgY21kX3Jl
cGx5OwogICAgICAgIHN0cnVjdCBiaW5kZXJfdHJhbnNhY3Rpb25fZGF0YV9zZyB0eG5fc2c7CiAg
ICB9IF9fYXR0cmlidXRlX18oKHBhY2tlZCkpIGRhdGE7CiAgICBkYXRhLmNtZF9mcmVlID0gQkNf
RlJFRV9CVUZGRVI7CiAgICBkYXRhLmJ1ZmZlciA9IGJ1ZmZlcl90b19mcmVlOwogICAgZGF0YS5j
bWRfcmVwbHkgPSBCQ19SRVBMWV9TRzsKICAgIGRhdGEudHhuX3NnLmJ1ZmZlcnNfc2l6ZSA9IHJl
cGx5LT5idWZmZXJzX3NpemU7CiAgICBkYXRhLnR4bl9zZy50cmFuc2FjdGlvbl9kYXRhLnRhcmdl
dC5wdHIgPSAwOwogICAgZGF0YS50eG5fc2cudHJhbnNhY3Rpb25fZGF0YS5jb29raWUgPSAwOwog
ICAgZGF0YS50eG5fc2cudHJhbnNhY3Rpb25fZGF0YS5jb2RlID0gMDsKICAgIGlmIChzdGF0dXMp
IHsKICAgICAgICBkYXRhLnR4bl9zZy50cmFuc2FjdGlvbl9kYXRhLmZsYWdzID0gVEZfU1RBVFVT
X0NPREU7CiAgICAgICAgZGF0YS50eG5fc2cudHJhbnNhY3Rpb25fZGF0YS5kYXRhX3NpemUgPSBz
aXplb2YoaW50KTsKICAgICAgICBkYXRhLnR4bl9zZy50cmFuc2FjdGlvbl9kYXRhLm9mZnNldHNf
c2l6ZSA9IDA7CiAgICAgICAgZGF0YS50eG5fc2cudHJhbnNhY3Rpb25fZGF0YS5kYXRhLnB0ci5i
dWZmZXIgPSAodWludHB0cl90KSZzdGF0dXM7CiAgICAgICAgZGF0YS50eG5fc2cudHJhbnNhY3Rp
b25fZGF0YS5kYXRhLnB0ci5vZmZzZXRzID0gMDsKICAgIH0gZWxzZSB7CiAgICAgICAgZGF0YS50
eG5fc2cudHJhbnNhY3Rpb25fZGF0YS5mbGFncyA9IDA7CiAgICAgICAgZGF0YS50eG5fc2cudHJh
bnNhY3Rpb25fZGF0YS5kYXRhX3NpemUgPSByZXBseS0+ZGF0YSAtIHJlcGx5LT5kYXRhMDsKICAg
ICAgICBkYXRhLnR4bl9zZy50cmFuc2FjdGlvbl9kYXRhLm9mZnNldHNfc2l6ZSA9ICgoY2hhciop
IHJlcGx5LT5vZmZzKSAtICgoY2hhciopIHJlcGx5LT5vZmZzMCk7CiAgICAgICAgZGF0YS50eG5f
c2cudHJhbnNhY3Rpb25fZGF0YS5kYXRhLnB0ci5idWZmZXIgPSAodWludHB0cl90KXJlcGx5LT5k
YXRhMDsKICAgICAgICBkYXRhLnR4bl9zZy50cmFuc2FjdGlvbl9kYXRhLmRhdGEucHRyLm9mZnNl
dHMgPSAodWludHB0cl90KXJlcGx5LT5vZmZzMDsKICAgICAgICBpZiAoZGF0YS50eG5fc2cudHJh
bnNhY3Rpb25fZGF0YS5vZmZzZXRzX3NpemUpIHsKICAgICAgICAgICAgKih2b2xhdGlsZSB1bnNp
Z25lZCBsb25nICopZGF0YS50eG5fc2cudHJhbnNhY3Rpb25fZGF0YS5kYXRhLnB0ci5vZmZzZXRz
OwogICAgICAgIH0KICAgICAgICBwcmludGYoIm9mZnNldHM9JXAsIG9mZnNldHNfc2l6ZT0lbHVc
biIsCiAgICAgICAgICAgIHJlcGx5LT5vZmZzMCwKICAgICAgICAgICAgKHVuc2lnbmVkIGxvbmcp
ZGF0YS50eG5fc2cudHJhbnNhY3Rpb25fZGF0YS5vZmZzZXRzX3NpemUpOwogICAgfQogICAgYmlu
ZGVyX3dyaXRlKGJzLCAmZGF0YSwgc2l6ZW9mKGRhdGEpKTsKfQppbnQgYmluZGVyX3BhcnNlKHN0
cnVjdCBiaW5kZXJfc3RhdGUgKmJzLCBzdHJ1Y3QgYmluZGVyX2lvICpiaW8sCiAgICAgICAgICAg
ICAgICAgdWludHB0cl90IHB0ciwgc2l6ZV90IHNpemUsIGJpbmRlcl9oYW5kbGVyIGZ1bmMpCnsK
ICAgIGludCByID0gMTsKICAgIHVpbnRwdHJfdCBlbmQgPSBwdHIgKyAodWludHB0cl90KSBzaXpl
OwogICAgd2hpbGUgKHB0ciA8IGVuZCkgewogICAgICAgIHVpbnQzMl90IGNtZCA9ICoodWludDMy
X3QgKikgcHRyOwogICAgICAgIHB0ciArPSBzaXplb2YodWludDMyX3QpOwojaWYgVFJBQ0UKICAg
ICAgICBmcHJpbnRmKHN0ZGVyciwiJXM6XG4iLCBjbWRfbmFtZShjbWQpKTsKI2VuZGlmCiAgICAg
ICAgc3dpdGNoKGNtZCkgewogICAgICAgIGNhc2UgQlJfTk9PUDoKICAgICAgICAgICAgYnJlYWs7
CiAgICAgICAgY2FzZSBCUl9UUkFOU0FDVElPTl9DT01QTEVURToKICAgICAgICAgICAgYnJlYWs7
CiAgICAgICAgY2FzZSBCUl9JTkNSRUZTOgogICAgICAgIGNhc2UgQlJfQUNRVUlSRToKICAgICAg
ICBjYXNlIEJSX1JFTEVBU0U6CiAgICAgICAgY2FzZSBCUl9ERUNSRUZTOgojaWYgVFJBQ0UKICAg
ICAgICAgICAgZnByaW50ZihzdGRlcnIsIiAgJXAsICVwXG4iLCAodm9pZCAqKXB0ciwgKHZvaWQg
KikocHRyICsgc2l6ZW9mKHZvaWQgKikpKTsKI2VuZGlmCiAgICAgICAgICAgIHB0ciArPSBzaXpl
b2Yoc3RydWN0IGJpbmRlcl9wdHJfY29va2llKTsKICAgICAgICAgICAgYnJlYWs7CiAgICAgICAg
Y2FzZSBCUl9UUkFOU0FDVElPTjogewogICAgICAgICAgICBzdHJ1Y3QgYmluZGVyX3RyYW5zYWN0
aW9uX2RhdGEgKnR4biA9IChzdHJ1Y3QgYmluZGVyX3RyYW5zYWN0aW9uX2RhdGEgKikgcHRyOwog
ICAgICAgICAgICBpZiAoKGVuZCAtIHB0cikgPCBzaXplb2YoKnR4bikpIHsKICAgICAgICAgICAg
ICAgIEFMT0dFKCJwYXJzZTogdHhuIHRvbyBzbWFsbCFcbiIpOwogICAgICAgICAgICAgICAgcmV0
dXJuIC0xOwogICAgICAgICAgICB9CiAgICAgICAgICAgIGJpbmRlcl9kdW1wX3R4bih0eG4pOwog
ICAgICAgICAgICBpZiAoZnVuYykgewogICAgICAgICAgICAgICAgdW5zaWduZWQgcmRhdGFbMjU2
LzRdOwogICAgICAgICAgICAgICAgc3RydWN0IGJpbmRlcl9pbyBtc2c7CiAgICAgICAgICAgICAg
ICBzdHJ1Y3QgYmluZGVyX2lvIHJlcGx5OwogICAgICAgICAgICAgICAgaW50IHJlczsKICAgICAg
ICAgICAgICAgIGJpb19pbml0KCZyZXBseSwgcmRhdGEsIHNpemVvZihyZGF0YSksIDQpOwogICAg
ICAgICAgICAgICAgYmlvX2luaXRfZnJvbV90eG4oJm1zZywgdHhuKTsKICAgICAgICAgICAgICAg
IHJlcyA9IGZ1bmMoYnMsIHR4biwgJm1zZywgJnJlcGx5KTsKICAgICAgICAgICAgICAgIGlmICgo
dHhuLT5mbGFncyAmIDEpID09IDApIHsKICAgICAgICAgICAgICAgICAgICBiaW5kZXJfc2VuZF9y
ZXBseShicywgJnJlcGx5LCB0eG4tPmRhdGEucHRyLmJ1ZmZlciwgcmVzKTsKICAgICAgICAgICAg
ICAgIH0KICAgICAgICAgICAgfQogICAgICAgICAgICBwdHIgKz0gc2l6ZW9mKCp0eG4pOwogICAg
ICAgICAgICBicmVhazsKICAgICAgICB9CiAgICAgICAgY2FzZSBCUl9SRVBMWTogewogICAgICAg
ICAgICBzdHJ1Y3QgYmluZGVyX3RyYW5zYWN0aW9uX2RhdGEgKnR4biA9IChzdHJ1Y3QgYmluZGVy
X3RyYW5zYWN0aW9uX2RhdGEgKikgcHRyOwogICAgICAgICAgICBpZiAoKGVuZCAtIHB0cikgPCBz
aXplb2YoKnR4bikpIHsKICAgICAgICAgICAgICAgIEFMT0dFKCJwYXJzZTogcmVwbHkgdG9vIHNt
YWxsIVxuIik7CiAgICAgICAgICAgICAgICByZXR1cm4gLTE7CiAgICAgICAgICAgIH0KICAgICAg
ICAgICAgYmluZGVyX2R1bXBfdHhuKHR4bik7CiAgICAgICAgICAgIGlmIChiaW8pIHsKICAgICAg
ICAgICAgICAgIGJpb19pbml0X2Zyb21fdHhuKGJpbywgdHhuKTsKICAgICAgICAgICAgICAgIGJp
byA9IDA7CiAgICAgICAgICAgIH0gZWxzZSB7CiAgICAgICAgICAgICAgICAvKiB0b2RvIEZSRUUg
QlVGRkVSICovCiAgICAgICAgICAgIH0KICAgICAgICAgICAgcHRyICs9IHNpemVvZigqdHhuKTsK
ICAgICAgICAgICAgciA9IDA7CiAgICAgICAgICAgIGJyZWFrOwogICAgICAgIH0KICAgICAgICBj
YXNlIEJSX0RFQURfQklOREVSOiB7CiAgICAgICAgICAgIHN0cnVjdCBiaW5kZXJfZGVhdGggKmRl
YXRoID0gKHN0cnVjdCBiaW5kZXJfZGVhdGggKikodWludHB0cl90KSAqKGJpbmRlcl91aW50cHRy
X3QgKilwdHI7CiAgICAgICAgICAgIHB0ciArPSBzaXplb2YoYmluZGVyX3VpbnRwdHJfdCk7CiAg
ICAgICAgICAgIGRlYXRoLT5mdW5jKGJzLCBkZWF0aC0+cHRyKTsKICAgICAgICAgICAgYnJlYWs7
CiAgICAgICAgfQogICAgICAgIGNhc2UgQlJfRkFJTEVEX1JFUExZOgogICAgICAgICAgICByID0g
LTE7CiAgICAgICAgICAgIGJyZWFrOwogICAgICAgIGNhc2UgQlJfREVBRF9SRVBMWToKICAgICAg
ICAgICAgciA9IC0xOwogICAgICAgICAgICBicmVhazsKICAgICAgICBkZWZhdWx0OgogICAgICAg
ICAgICBBTE9HRSgicGFyc2U6IE9PUFMgJWRcbiIsIGNtZCk7CiAgICAgICAgICAgIHJldHVybiAt
MTsKICAgICAgICB9CiAgICB9CiAgICByZXR1cm4gcjsKfQp2b2lkIGJpbmRlcl9hY3F1aXJlKHN0
cnVjdCBiaW5kZXJfc3RhdGUgKmJzLCB1aW50MzJfdCB0YXJnZXQpCnsKICAgIHVpbnQzMl90IGNt
ZFsyXTsKICAgIGNtZFswXSA9IEJDX0FDUVVJUkU7CiAgICBjbWRbMV0gPSB0YXJnZXQ7CiAgICBi
aW5kZXJfd3JpdGUoYnMsIGNtZCwgc2l6ZW9mKGNtZCkpOwp9CnZvaWQgYmluZGVyX3JlbGVhc2Uo
c3RydWN0IGJpbmRlcl9zdGF0ZSAqYnMsIHVpbnQzMl90IHRhcmdldCkKewogICAgdWludDMyX3Qg
Y21kWzJdOwogICAgY21kWzBdID0gQkNfUkVMRUFTRTsKICAgIGNtZFsxXSA9IHRhcmdldDsKICAg
IGJpbmRlcl93cml0ZShicywgY21kLCBzaXplb2YoY21kKSk7Cn0Kdm9pZCBiaW5kZXJfaW5jcmVm
cyhzdHJ1Y3QgYmluZGVyX3N0YXRlICpicywgdWludDMyX3QgdGFyZ2V0KQp7CiAgICB1aW50MzJf
dCBjbWRbMl07CiAgICBjbWRbMF0gPSBCQ19JTkNSRUZTOwogICAgY21kWzFdID0gdGFyZ2V0Owog
ICAgYmluZGVyX3dyaXRlKGJzLCBjbWQsIHNpemVvZihjbWQpKTsKfQp2b2lkIGJpbmRlcl9kZWNy
ZWZzKHN0cnVjdCBiaW5kZXJfc3RhdGUgKmJzLCB1aW50MzJfdCB0YXJnZXQpCnsKICAgIHVpbnQz
Ml90IGNtZFsyXTsKICAgIGNtZFswXSA9IEJDX0RFQ1JFRlM7CiAgICBjbWRbMV0gPSB0YXJnZXQ7
CiAgICBiaW5kZXJfd3JpdGUoYnMsIGNtZCwgc2l6ZW9mKGNtZCkpOwp9CnZvaWQgYmluZGVyX2xp
bmtfdG9fZGVhdGgoc3RydWN0IGJpbmRlcl9zdGF0ZSAqYnMsIHVpbnQzMl90IHRhcmdldCwgc3Ry
dWN0IGJpbmRlcl9kZWF0aCAqZGVhdGgpCnsKICAgIHN0cnVjdCB7CiAgICAgICAgdWludDMyX3Qg
Y21kOwogICAgICAgIHN0cnVjdCBiaW5kZXJfaGFuZGxlX2Nvb2tpZSBwYXlsb2FkOwogICAgfSBf
X2F0dHJpYnV0ZV9fKChwYWNrZWQpKSBkYXRhOwogICAgZGF0YS5jbWQgPSBCQ19SRVFVRVNUX0RF
QVRIX05PVElGSUNBVElPTjsKICAgIGRhdGEucGF5bG9hZC5oYW5kbGUgPSB0YXJnZXQ7CiAgICBk
YXRhLnBheWxvYWQuY29va2llID0gKHVpbnRwdHJfdCkgZGVhdGg7CiAgICBiaW5kZXJfd3JpdGUo
YnMsICZkYXRhLCBzaXplb2YoZGF0YSkpOwp9CmludCBiaW5kZXJfY2FsbChzdHJ1Y3QgYmluZGVy
X3N0YXRlICpicywKICAgICAgICAgICAgICAgIHN0cnVjdCBiaW5kZXJfaW8gKm1zZywgc3RydWN0
IGJpbmRlcl9pbyAqcmVwbHksCiAgICAgICAgICAgICAgICB1aW50MzJfdCB0YXJnZXQsIHVpbnQz
Ml90IGNvZGUpCnsKICAgIGludCByZXM7CiAgICBzdHJ1Y3QgYmluZGVyX3dyaXRlX3JlYWQgYndy
OwogICAgc3RydWN0IHsKICAgICAgICB1aW50MzJfdCBjbWQ7CiAgICAgICAgc3RydWN0IGJpbmRl
cl90cmFuc2FjdGlvbl9kYXRhX3NnIHR4bl9zZzsKICAgIH0gX19hdHRyaWJ1dGVfXygocGFja2Vk
KSkgd3JpdGVidWY7CiAgICB1bnNpZ25lZCByZWFkYnVmWzMyXTsKICAgIGlmIChtc2ctPmZsYWdz
ICYgQklPX0ZfT1ZFUkZMT1cpIHsKICAgICAgICBmcHJpbnRmKHN0ZGVyciwiYmluZGVyOiB0eG4g
YnVmZmVyIG92ZXJmbG93XG4iKTsKICAgICAgICBnb3RvIGZhaWw7CiAgICB9CiAgICB3cml0ZWJ1
Zi5jbWQgPSBCQ19UUkFOU0FDVElPTl9TRzsKICAgIHdyaXRlYnVmLnR4bl9zZy5idWZmZXJzX3Np
emUgPSBtc2ctPmJ1ZmZlcnNfc2l6ZTsKICAgIHdyaXRlYnVmLnR4bl9zZy50cmFuc2FjdGlvbl9k
YXRhLnRhcmdldC5oYW5kbGUgPSB0YXJnZXQ7CiAgICB3cml0ZWJ1Zi50eG5fc2cudHJhbnNhY3Rp
b25fZGF0YS5jb2RlID0gY29kZTsKICAgIHdyaXRlYnVmLnR4bl9zZy50cmFuc2FjdGlvbl9kYXRh
LmZsYWdzID0gVEZfQUNDRVBUX0ZEUzsKICAgIHdyaXRlYnVmLnR4bl9zZy50cmFuc2FjdGlvbl9k
YXRhLmRhdGFfc2l6ZSA9IG1zZy0+ZGF0YSAtIG1zZy0+ZGF0YTA7CiAgICB3cml0ZWJ1Zi50eG5f
c2cudHJhbnNhY3Rpb25fZGF0YS5vZmZzZXRzX3NpemUgPSAoKGNoYXIqKSBtc2ctPm9mZnMpIC0g
KChjaGFyKikgbXNnLT5vZmZzMCk7CiAgICB3cml0ZWJ1Zi50eG5fc2cudHJhbnNhY3Rpb25fZGF0
YS5kYXRhLnB0ci5idWZmZXIgPSAodWludHB0cl90KW1zZy0+ZGF0YTA7CiAgICB3cml0ZWJ1Zi50
eG5fc2cudHJhbnNhY3Rpb25fZGF0YS5kYXRhLnB0ci5vZmZzZXRzID0gKHVpbnRwdHJfdCltc2ct
Pm9mZnMwOwogICAgYndyLndyaXRlX3NpemUgPSBzaXplb2Yod3JpdGVidWYpOwogICAgYndyLndy
aXRlX2NvbnN1bWVkID0gMDsKICAgIGJ3ci53cml0ZV9idWZmZXIgPSAodWludHB0cl90KSAmd3Jp
dGVidWY7CiAgICBoZXhkdW1wKG1zZy0+ZGF0YTAsIG1zZy0+ZGF0YSAtIG1zZy0+ZGF0YTApOwog
ICAgYm9vbCBmaXJzdF9pdGVyID0gZmFsc2U7CiAgICBmb3IgKDs7KSB7CiAgICAgICAgYndyLnJl
YWRfc2l6ZSA9IHNpemVvZihyZWFkYnVmKTsKICAgICAgICBid3IucmVhZF9jb25zdW1lZCA9IDA7
CiAgICAgICAgYndyLnJlYWRfYnVmZmVyID0gKHVpbnRwdHJfdCkgcmVhZGJ1ZjsKCiAgICAgICAg
aWYgKGZpcnN0X2l0ZXIpIHsKICAgICAgICAgICAgYndyLnJlYWRfc2l6ZSA9IDA7CiAgICAgICAg
ICAgIHByaW50ZigiJWQgZm9ya2luZy4uLlxuIiwgZ2V0cGlkKCkpOwogICAgICAgICAgICBwaWRf
dCBjaGlsZCA9IGZvcmsoKTsKICAgICAgICAgICAgaWYgKGNoaWxkID09IC0xKSBlcnIoMSwgImZv
cmsiKTsKICAgICAgICAgICAgaWYgKGNoaWxkID09IDApIHsKCiAgICAgICAgICAgICAgICBwcmlu
dGYoImVudGVyaW5nIGNoaWxkOiAlZFxuIiwgZ2V0cGlkKCkpOwogICAgICAgICAgICAgICAgcmVz
ID0gaW9jdGwoYnMtPmZkLCBCSU5ERVJfV1JJVEVfUkVBRCwgJmJ3cik7CiAgICAgICAgICAgICAg
ICBpZiAocmVzIDwgMCkgewogICAgICAgICAgICAgICAgICAgIGZwcmludGYoc3RkZXJyLCJiaW5k
ZXI6IGlvY3RsIGZhaWxlZCAoJXMpXG4iLCBzdHJlcnJvcihlcnJubykpOwogICAgICAgICAgICAg
ICAgfQogICAgICAgICAgICAgICAgaWYgKGJ3ci53cml0ZV9jb25zdW1lZCAhPSBid3Iud3JpdGVf
c2l6ZSkgewogICAgICAgICAgICAgICAgICAgIGVycngoMSwgIndyaXRlX2NvbnN1bWVkICE9IHdy
aXRlX3NpemUiKTsKICAgICAgICAgICAgICAgIH0KCiAgICAgICAgICAgICAgICBwcmludGYoImNo
aWxkIGV4aXRpbmdcbiIpOwogICAgICAgICAgICAgICAgZXhpdCgwKTsKICAgICAgICAgICAgfQog
ICAgICAgICAgICBpbnQgc3RhdHVzOwogICAgICAgICAgICBpZiAod2FpdCgmc3RhdHVzKSAhPSBj
aGlsZCkgZXJyKDEsICJ3YWl0IGZvciBjaGlsZCIpOwogICAgICAgICAgICBid3Iud3JpdGVfY29u
c3VtZWQgPSBid3Iud3JpdGVfc2l6ZTsKICAgICAgICAgICAgcHJpbnRmKCJjaGlsZCBpcyBkZWFk
XG4iKTsKICAgICAgICB9IGVsc2UgewogICAgICAgICAgICByZXMgPSBpb2N0bChicy0+ZmQsIEJJ
TkRFUl9XUklURV9SRUFELCAmYndyKTsKICAgICAgICAgICAgaWYgKHJlcyA8IDApIHsKICAgICAg
ICAgICAgICAgIGZwcmludGYoc3RkZXJyLCJiaW5kZXI6IGlvY3RsIGZhaWxlZCAoJXMpXG4iLCBz
dHJlcnJvcihlcnJubykpOwogICAgICAgICAgICAgICAgZ290byBmYWlsOwogICAgICAgICAgICB9
CiAgICAgICAgICAgIHJlcyA9IGJpbmRlcl9wYXJzZShicywgcmVwbHksICh1aW50cHRyX3QpIHJl
YWRidWYsIGJ3ci5yZWFkX2NvbnN1bWVkLCAwKTsKICAgICAgICAgICAgaWYgKHJlcyA9PSAwKSBy
ZXR1cm4gMDsKICAgICAgICAgICAgaWYgKHJlcyA8IDApIGdvdG8gZmFpbDsKICAgICAgICB9Cgog
ICAgICAgIGZpcnN0X2l0ZXIgPSBmYWxzZTsKICAgIH0KZmFpbDoKICAgIG1lbXNldChyZXBseSwg
MCwgc2l6ZW9mKCpyZXBseSkpOwogICAgcmVwbHktPmZsYWdzIHw9IEJJT19GX0lPRVJST1I7CiAg
ICByZXR1cm4gLTE7Cn0KaW50IGJpbmRlcl9jYWxsX2FzeW5jKHN0cnVjdCBiaW5kZXJfc3RhdGUg
KmJzLAogICAgICAgICAgICAgICAgc3RydWN0IGJpbmRlcl9pbyAqbXNnLCB1aW50MzJfdCB0YXJn
ZXQsIHVpbnQzMl90IGNvZGUpCnsKICAgIGludCByZXM7CiAgICBzdHJ1Y3QgYmluZGVyX3dyaXRl
X3JlYWQgYndyOwogICAgc3RydWN0IHsKICAgICAgICB1aW50MzJfdCBjbWQ7CiAgICAgICAgc3Ry
dWN0IGJpbmRlcl90cmFuc2FjdGlvbl9kYXRhIHR4bjsKICAgIH0gX19hdHRyaWJ1dGVfXygocGFj
a2VkKSkgd3JpdGVidWY7CiAgICBpZiAobXNnLT5mbGFncyAmIEJJT19GX09WRVJGTE9XKSB7CiAg
ICAgICAgZnByaW50ZihzdGRlcnIsImJpbmRlcjogdHhuIGJ1ZmZlciBvdmVyZmxvd1xuIik7CiAg
ICAgICAgZ290byBmYWlsOwogICAgfQogICAgd3JpdGVidWYuY21kID0gQkNfVFJBTlNBQ1RJT047
CiAgICB3cml0ZWJ1Zi50eG4udGFyZ2V0LmhhbmRsZSA9IHRhcmdldDsKICAgIHdyaXRlYnVmLnR4
bi5jb2RlID0gY29kZTsKICAgIHdyaXRlYnVmLnR4bi5mbGFncyA9IFRGX0FDQ0VQVF9GRFM7CiAg
ICB3cml0ZWJ1Zi50eG4uZGF0YV9zaXplID0gbXNnLT5kYXRhIC0gbXNnLT5kYXRhMDsKICAgIHdy
aXRlYnVmLnR4bi5vZmZzZXRzX3NpemUgPSAoKGNoYXIqKSBtc2ctPm9mZnMpIC0gKChjaGFyKikg
bXNnLT5vZmZzMCk7CiAgICB3cml0ZWJ1Zi50eG4uZGF0YS5wdHIuYnVmZmVyID0gKHVpbnRwdHJf
dCltc2ctPmRhdGEwOwogICAgd3JpdGVidWYudHhuLmRhdGEucHRyLm9mZnNldHMgPSAodWludHB0
cl90KW1zZy0+b2ZmczA7CiAgICBid3Iud3JpdGVfc2l6ZSA9IHNpemVvZih3cml0ZWJ1Zik7CiAg
ICBid3Iud3JpdGVfY29uc3VtZWQgPSAwOwogICAgYndyLndyaXRlX2J1ZmZlciA9ICh1aW50cHRy
X3QpICZ3cml0ZWJ1ZjsKICAgIGJ3ci5yZWFkX3NpemUgPSAwOwogICAgYndyLnJlYWRfYnVmZmVy
ID0gMDsKICAgIGJ3ci5yZWFkX2NvbnN1bWVkID0gMDsKICAgIGhleGR1bXAobXNnLT5kYXRhMCwg
bXNnLT5kYXRhIC0gbXNnLT5kYXRhMCk7CiAgICByZXMgPSBpb2N0bChicy0+ZmQsIEJJTkRFUl9X
UklURV9SRUFELCAmYndyKTsKICAgIGlmIChyZXMgPCAwKSB7CiAgICAgICAgZnByaW50ZihzdGRl
cnIsImJpbmRlcjogaW9jdGwgZmFpbGVkICglcylcbiIsIHN0cmVycm9yKGVycm5vKSk7CiAgICAg
ICAgZ290byBmYWlsOwogICAgfQogICAgcmV0dXJuIDA7CmZhaWw6CiAgICByZXR1cm4gLTE7Cn0K
CgppbnQgYmluZGVyX3JlYWRfcmVwbHkoc3RydWN0IGJpbmRlcl9zdGF0ZSogYnMsCiAgICAgICAg
ICAgICAgICBzdHJ1Y3QgYmluZGVyX2lvKiByZXBseSkKewogICAgaW50IHJlczsKICAgIHN0cnVj
dCBiaW5kZXJfd3JpdGVfcmVhZCBid3I7CiAgICB1bnNpZ25lZCByZWFkYnVmWzMyXTsKICAgIGJ3
ci53cml0ZV9zaXplID0gMDsKICAgIGJ3ci53cml0ZV9jb25zdW1lZCA9IDA7CiAgICBid3Iud3Jp
dGVfYnVmZmVyID0gMDsKICAgIGZvciAoOzspIHsKICAgICAgICBid3IucmVhZF9zaXplID0gc2l6
ZW9mKHJlYWRidWYpOwogICAgICAgIGJ3ci5yZWFkX2NvbnN1bWVkID0gMDsKICAgICAgICBid3Iu
cmVhZF9idWZmZXIgPSAodWludHB0cl90KSByZWFkYnVmOwogICAgICAgIHJlcyA9IGlvY3RsKGJz
LT5mZCwgQklOREVSX1dSSVRFX1JFQUQsICZid3IpOwogICAgICAgIGlmIChyZXMgPCAwKSB7CiAg
ICAgICAgICAgIGZwcmludGYoc3RkZXJyLCJiaW5kZXI6IGlvY3RsIGZhaWxlZCAoJXMpXG4iLCBz
dHJlcnJvcihlcnJubykpOwogICAgICAgICAgICBnb3RvIGZhaWw7CiAgICAgICAgfQogICAgICAg
IHJlcyA9IGJpbmRlcl9wYXJzZShicywgcmVwbHksICh1aW50cHRyX3QpIHJlYWRidWYsIGJ3ci5y
ZWFkX2NvbnN1bWVkLCAwKTsKICAgICAgICBpZiAocmVzID09IDApIHJldHVybiAwOwogICAgICAg
IGlmIChyZXMgPCAwKSBnb3RvIGZhaWw7CiAgICB9CmZhaWw6CiAgICBtZW1zZXQocmVwbHksIDAs
IHNpemVvZigqcmVwbHkpKTsKICAgIHJlcGx5LT5mbGFncyB8PSBCSU9fRl9JT0VSUk9SOwogICAg
cmV0dXJuIC0xOwp9CgppbnQgYmluZGVyX3JlYWRfcmVwbHlfaGFuZGxlcihzdHJ1Y3QgYmluZGVy
X3N0YXRlKiBicywKICAgICAgICAgICAgICAgIHN0cnVjdCBiaW5kZXJfaW8qIHJlcGx5LCBiaW5k
ZXJfaGFuZGxlciBmdW5jKQp7CiAgICBpbnQgcmVzOwogICAgc3RydWN0IGJpbmRlcl93cml0ZV9y
ZWFkIGJ3cjsKICAgIHVuc2lnbmVkIHJlYWRidWZbMzJdOwogICAgYndyLndyaXRlX3NpemUgPSAw
OwogICAgYndyLndyaXRlX2NvbnN1bWVkID0gMDsKICAgIGJ3ci53cml0ZV9idWZmZXIgPSAwOwog
ICAgZm9yICg7OykgewogICAgICAgIGJ3ci5yZWFkX3NpemUgPSBzaXplb2YocmVhZGJ1Zik7CiAg
ICAgICAgYndyLnJlYWRfY29uc3VtZWQgPSAwOwogICAgICAgIGJ3ci5yZWFkX2J1ZmZlciA9ICh1
aW50cHRyX3QpIHJlYWRidWY7CiAgICAgICAgcmVzID0gaW9jdGwoYnMtPmZkLCBCSU5ERVJfV1JJ
VEVfUkVBRCwgJmJ3cik7CiAgICAgICAgaWYgKHJlcyA8IDApIHsKICAgICAgICAgICAgZnByaW50
ZihzdGRlcnIsImJpbmRlcjogaW9jdGwgZmFpbGVkICglcylcbiIsIHN0cmVycm9yKGVycm5vKSk7
CiAgICAgICAgICAgIGdvdG8gZmFpbDsKICAgICAgICB9CiAgICAgICAgcmVzID0gYmluZGVyX3Bh
cnNlKGJzLCByZXBseSwgKHVpbnRwdHJfdCkgcmVhZGJ1ZiwgYndyLnJlYWRfY29uc3VtZWQsIGZ1
bmMpOwogICAgICAgIGlmIChyZXMgPT0gMCkgcmV0dXJuIDA7CiAgICAgICAgaWYgKHJlcyA8IDAp
IGdvdG8gZmFpbDsKICAgIH0KZmFpbDoKICAgIG1lbXNldChyZXBseSwgMCwgc2l6ZW9mKCpyZXBs
eSkpOwogICAgcmVwbHktPmZsYWdzIHw9IEJJT19GX0lPRVJST1I7CiAgICByZXR1cm4gLTE7Cn0K
CnZvaWQgYmluZGVyX2xvb3Aoc3RydWN0IGJpbmRlcl9zdGF0ZSAqYnMsIGJpbmRlcl9oYW5kbGVy
IGZ1bmMpCnsKICAgIGludCByZXM7CiAgICBzdHJ1Y3QgYmluZGVyX3dyaXRlX3JlYWQgYndyOwog
ICAgdWludDMyX3QgcmVhZGJ1ZlszMl07CiAgICBid3Iud3JpdGVfc2l6ZSA9IDA7CiAgICBid3Iu
d3JpdGVfY29uc3VtZWQgPSAwOwogICAgYndyLndyaXRlX2J1ZmZlciA9IDA7CiAgICByZWFkYnVm
WzBdID0gQkNfRU5URVJfTE9PUEVSOwogICAgYmluZGVyX3dyaXRlKGJzLCByZWFkYnVmLCBzaXpl
b2YodWludDMyX3QpKTsKICAgIGZvciAoOzspIHsKICAgICAgICBid3IucmVhZF9zaXplID0gc2l6
ZW9mKHJlYWRidWYpOwogICAgICAgIGJ3ci5yZWFkX2NvbnN1bWVkID0gMDsKICAgICAgICBid3Iu
cmVhZF9idWZmZXIgPSAodWludHB0cl90KSByZWFkYnVmOwogICAgICAgIHJlcyA9IGlvY3RsKGJz
LT5mZCwgQklOREVSX1dSSVRFX1JFQUQsICZid3IpOwogICAgICAgIGlmIChyZXMgPCAwKSB7CiAg
ICAgICAgICAgIGZwcmludGYoc3RkZXJyLCJiaW5kZXJfbG9vcDogaW9jdGwgZmFpbGVkICglcylc
biIsIHN0cmVycm9yKGVycm5vKSk7CiAgICAgICAgICAgIGJyZWFrOwogICAgICAgIH0KICAgICAg
ICByZXMgPSBiaW5kZXJfcGFyc2UoYnMsIDAsICh1aW50cHRyX3QpIHJlYWRidWYsIGJ3ci5yZWFk
X2NvbnN1bWVkLCBmdW5jKTsKICAgICAgICBpZiAocmVzID09IDApIHsKICAgICAgICAgICAgZnBy
aW50ZihzdGRlcnIsImJpbmRlcl9sb29wOiB1bmV4cGVjdGVkIHJlcGx5PyFcbiIpOwogICAgICAg
ICAgICBicmVhazsKICAgICAgICB9CiAgICAgICAgaWYgKHJlcyA8IDApIHsKICAgICAgICAgICAg
ZnByaW50ZihzdGRlcnIsImJpbmRlcl9sb29wOiBpbyBlcnJvciAlZCAlc1xuIiwgcmVzLCBzdHJl
cnJvcihlcnJubykpOwogICAgICAgICAgICBicmVhazsKICAgICAgICB9CiAgICB9Cn0Kdm9pZCBi
aW9faW5pdF9mcm9tX3R4bihzdHJ1Y3QgYmluZGVyX2lvICpiaW8sIHN0cnVjdCBiaW5kZXJfdHJh
bnNhY3Rpb25fZGF0YSAqdHhuKQp7CiAgICBiaW8tPmRhdGEgPSBiaW8tPmRhdGEwID0gKGNoYXIg
KikoaW50cHRyX3QpdHhuLT5kYXRhLnB0ci5idWZmZXI7CiAgICBiaW8tPm9mZnMgPSBiaW8tPm9m
ZnMwID0gKGJpbmRlcl9zaXplX3QgKikoaW50cHRyX3QpdHhuLT5kYXRhLnB0ci5vZmZzZXRzOwog
ICAgYmlvLT5kYXRhX2F2YWlsID0gdHhuLT5kYXRhX3NpemU7CiAgICBiaW8tPm9mZnNfYXZhaWwg
PSB0eG4tPm9mZnNldHNfc2l6ZSAvIHNpemVvZihzaXplX3QpOwogICAgYmlvLT5mbGFncyA9IEJJ
T19GX1NIQVJFRDsKfQp2b2lkIGJpb19pbml0KHN0cnVjdCBiaW5kZXJfaW8gKmJpbywgdm9pZCAq
ZGF0YSwKICAgICAgICAgICAgICBzaXplX3QgbWF4ZGF0YSwgc2l6ZV90IG1heG9mZnMpCnsKICAg
IHNpemVfdCBuID0gbWF4b2ZmcyAqIHNpemVvZihzaXplX3QpOwogICAgaWYgKG4gPiBtYXhkYXRh
KSB7CiAgICAgICAgYmlvLT5mbGFncyA9IEJJT19GX09WRVJGTE9XOwogICAgICAgIGJpby0+ZGF0
YV9hdmFpbCA9IDA7CiAgICAgICAgYmlvLT5vZmZzX2F2YWlsID0gMDsKICAgICAgICByZXR1cm47
CiAgICB9CiAgICBiaW8tPmRhdGEgPSBiaW8tPmRhdGEwID0gKGNoYXIgKikgZGF0YSArIG47CiAg
ICBiaW8tPm9mZnMgPSBiaW8tPm9mZnMwID0gZGF0YTsKICAgIGJpby0+ZGF0YV9hdmFpbCA9IG1h
eGRhdGEgLSBuOwogICAgYmlvLT5vZmZzX2F2YWlsID0gbWF4b2ZmczsKICAgIGJpby0+ZmxhZ3Mg
PSAwOwogICAgYmlvLT5idWZmZXJzX3NpemUgPSAwOwp9CnN0YXRpYyB2b2lkICpiaW9fYWxsb2Mo
c3RydWN0IGJpbmRlcl9pbyAqYmlvLCBzaXplX3Qgc2l6ZSkKewogICAgc2l6ZSA9IChzaXplICsg
MykgJiAofjMpOwogICAgaWYgKHNpemUgPiBiaW8tPmRhdGFfYXZhaWwpIHsKICAgICAgICBiaW8t
PmZsYWdzIHw9IEJJT19GX09WRVJGTE9XOwogICAgICAgIHJldHVybiBOVUxMOwogICAgfSBlbHNl
IHsKICAgICAgICB2b2lkICpwdHIgPSBiaW8tPmRhdGE7CiAgICAgICAgYmlvLT5kYXRhICs9IHNp
emU7CiAgICAgICAgYmlvLT5kYXRhX2F2YWlsIC09IHNpemU7CiAgICAgICAgcmV0dXJuIHB0cjsK
ICAgIH0KfQp2b2lkIGJpbmRlcl9kb25lKHN0cnVjdCBiaW5kZXJfc3RhdGUgKmJzLAogICAgICAg
ICAgICAgICAgIHN0cnVjdCBiaW5kZXJfaW8gKm1zZywKICAgICAgICAgICAgICAgICBzdHJ1Y3Qg
YmluZGVyX2lvICpyZXBseSkKewogICAgc3RydWN0IHsKICAgICAgICB1aW50MzJfdCBjbWQ7CiAg
ICAgICAgdWludHB0cl90IGJ1ZmZlcjsKICAgIH0gX19hdHRyaWJ1dGVfXygocGFja2VkKSkgZGF0
YTsKICAgIGlmIChyZXBseS0+ZmxhZ3MgJiBCSU9fRl9TSEFSRUQpIHsKICAgICAgICBwcmludGYo
ImJpbmRlcl9kb25lOiBmcmVlaW5nIGJ1ZmZlclxuIik7CiAgICAgICAgZGF0YS5jbWQgPSBCQ19G
UkVFX0JVRkZFUjsKICAgICAgICBkYXRhLmJ1ZmZlciA9ICh1aW50cHRyX3QpIHJlcGx5LT5kYXRh
MDsKICAgICAgICBiaW5kZXJfd3JpdGUoYnMsICZkYXRhLCBzaXplb2YoZGF0YSkpOwogICAgICAg
IHJlcGx5LT5mbGFncyA9IDA7CiAgICAgICAgcHJpbnRmKCJiaW5kZXJfZG9uZTogZnJlZSBkb25l
XG4iKTsKICAgIH0KfQpzdGF0aWMgc3RydWN0IGZsYXRfYmluZGVyX29iamVjdCAqYmlvX2FsbG9j
X29iaihzdHJ1Y3QgYmluZGVyX2lvICpiaW8pCnsKICAgIHN0cnVjdCBmbGF0X2JpbmRlcl9vYmpl
Y3QgKm9iajsKICAgIG9iaiA9IGJpb19hbGxvYyhiaW8sIHNpemVvZigqb2JqKSk7CiAgICBpZiAo
b2JqICYmIGJpby0+b2Zmc19hdmFpbCkgewogICAgICAgIGJpby0+b2Zmc19hdmFpbC0tOwogICAg
ICAgICpiaW8tPm9mZnMrKyA9ICgoY2hhciopIG9iaikgLSAoKGNoYXIqKSBiaW8tPmRhdGEwKTsK
ICAgICAgICByZXR1cm4gb2JqOwogICAgfQogICAgYmlvLT5mbGFncyB8PSBCSU9fRl9PVkVSRkxP
VzsKICAgIHJldHVybiBOVUxMOwp9CnN0YXRpYyBzdHJ1Y3QgYmluZGVyX2ZkX2FycmF5X29iamVj
dCAqYmlvX2FsbG9jX2ZkYShzdHJ1Y3QgYmluZGVyX2lvICpiaW8pCnsKICAgIHN0cnVjdCBiaW5k
ZXJfZmRfYXJyYXlfb2JqZWN0ICpvYmo7CiAgICBvYmogPSBiaW9fYWxsb2MoYmlvLCBzaXplb2Yo
Km9iaikpOwogICAgaWYgKG9iaiAmJiBiaW8tPm9mZnNfYXZhaWwpIHsKICAgICAgICBiaW8tPm9m
ZnNfYXZhaWwtLTsKICAgICAgICAqYmlvLT5vZmZzKysgPSAoKGNoYXIqKSBvYmopIC0gKChjaGFy
KikgYmlvLT5kYXRhMCk7CiAgICAgICAgcmV0dXJuIG9iajsKICAgIH0KICAgIGJpby0+ZmxhZ3Mg
fD0gQklPX0ZfT1ZFUkZMT1c7CiAgICByZXR1cm4gTlVMTDsKfQpzdGF0aWMgc3RydWN0IGJpbmRl
cl9idWZmZXJfb2JqZWN0ICpiaW9fYWxsb2NfYnVmKHN0cnVjdCBiaW5kZXJfaW8gKmJpbywgaW50
ICpidWZfaWQpCnsKICAgIHN0cnVjdCBiaW5kZXJfYnVmZmVyX29iamVjdCAqb2JqOwogICAgb2Jq
ID0gYmlvX2FsbG9jKGJpbywgc2l6ZW9mKCpvYmopKTsKICAgIGlmIChvYmogJiYgYmlvLT5vZmZz
X2F2YWlsKSB7CiAgICAgICAgYmlvLT5vZmZzX2F2YWlsLS07CiAgICAgICAgaWYgKGJ1Zl9pZCkg
KmJ1Zl9pZCA9IGJpby0+b2ZmcyAtIGJpby0+b2ZmczA7CiAgICAgICAgKmJpby0+b2ZmcysrID0g
KChjaGFyKikgb2JqKSAtICgoY2hhciopIGJpby0+ZGF0YTApOwogICAgICAgIHJldHVybiBvYmo7
CiAgICB9CiAgICBiaW8tPmZsYWdzIHw9IEJJT19GX09WRVJGTE9XOwogICAgcmV0dXJuIE5VTEw7
Cn0Kdm9pZCBiaW9fcHV0X3VpbnQzMihzdHJ1Y3QgYmluZGVyX2lvICpiaW8sIHVpbnQzMl90IG4p
CnsKICAgIHVpbnQzMl90ICpwdHIgPSBiaW9fYWxsb2MoYmlvLCBzaXplb2YobikpOwogICAgaWYg
KHB0cikKICAgICAgICAqcHRyID0gbjsKfQp2b2lkIGJpb19wdXRfb2JqKHN0cnVjdCBiaW5kZXJf
aW8gKmJpbywgdm9pZCAqcHRyKQp7CiAgICBzdHJ1Y3QgZmxhdF9iaW5kZXJfb2JqZWN0ICpvYmo7
CiAgICBvYmogPSBiaW9fYWxsb2Nfb2JqKGJpbyk7CiAgICBpZiAoIW9iaikKICAgICAgICByZXR1
cm47CiAgICBvYmotPmZsYWdzID0gMHg3ZiB8IEZMQVRfQklOREVSX0ZMQUdfQUNDRVBUU19GRFM7
CiAgICBvYmotPmhkci50eXBlID0gQklOREVSX1RZUEVfQklOREVSOwogICAgb2JqLT5iaW5kZXIg
PSAodWludHB0cl90KXB0cjsKICAgIG9iai0+Y29va2llID0gMDsKfQp2b2lkIGJpb19wdXRfZmQo
c3RydWN0IGJpbmRlcl9pbyAqYmlvLCBpbnQgZmQpCnsKICAgIHN0cnVjdCBmbGF0X2JpbmRlcl9v
YmplY3QgKm9iajsKICAgIG9iaiA9IGJpb19hbGxvY19vYmooYmlvKTsKICAgIGlmICghb2JqKQog
ICAgICAgIHJldHVybjsKICAgIG9iai0+ZmxhZ3MgPSAweDdmIHwgRkxBVF9CSU5ERVJfRkxBR19B
Q0NFUFRTX0ZEUzsKICAgIG9iai0+aGRyLnR5cGUgPSBCSU5ERVJfVFlQRV9GRDsKICAgIG9iai0+
YmluZGVyID0gKHVpbnRwdHJfdClmZDsKICAgIG9iai0+Y29va2llID0gMDsKfQoKdm9pZCBiaW9f
cHV0X2J1ZihzdHJ1Y3QgYmluZGVyX2lvICpiaW8sIHZvaWQgKmRhdGEsIHNpemVfdCBsZW4sIGlu
dCAqYnVmX2lkKSB7CiAgICBzdHJ1Y3QgYmluZGVyX2J1ZmZlcl9vYmplY3QgKm9iajsKICAgIG9i
aiA9IGJpb19hbGxvY19idWYoYmlvLCBidWZfaWQpOwogICAgaWYgKCFvYmopCiAgICAgICAgcmV0
dXJuOwogICAgb2JqLT5oZHIudHlwZSA9IEJJTkRFUl9UWVBFX1BUUjsKICAgIG9iai0+ZmxhZ3Mg
PSAwOwogICAgb2JqLT5idWZmZXIgPSAodW5zaWduZWQgbG9uZylkYXRhOwogICAgb2JqLT5sZW5n
dGggPSBsZW47CiAgICBvYmotPnBhcmVudCA9IDA7IC8vIHVudXNlZAogICAgb2JqLT5wYXJlbnRf
b2Zmc2V0ID0gMDsgLy8gdW51c2VkCiAgICBiaW8tPmJ1ZmZlcnNfc2l6ZSArPSAobGVuKzcpJn43
VUw7IC8vIFRPRE8gcm91bmRpbmcgYmxhcmdoCn0KCnZvaWQgYmlvX3B1dF9zdWJfYnVmKHN0cnVj
dCBiaW5kZXJfaW8gKmJpbywgaW50IHBhcmVudF9pZCwgaW50IHBhcmVudF9vZmZzZXQsIHZvaWQg
KmRhdGEsIHNpemVfdCBsZW4sIGludCAqYnVmX2lkKSB7CiAgICBzdHJ1Y3QgYmluZGVyX2J1ZmZl
cl9vYmplY3QgKm9iajsKICAgIG9iaiA9IGJpb19hbGxvY19idWYoYmlvLCBidWZfaWQpOwogICAg
aWYgKCFvYmopCiAgICAgICAgcmV0dXJuOwogICAgb2JqLT5oZHIudHlwZSA9IEJJTkRFUl9UWVBF
X1BUUjsKICAgIG9iai0+ZmxhZ3MgPSBCSU5ERVJfQlVGRkVSX0ZMQUdfSEFTX1BBUkVOVDsKICAg
IG9iai0+YnVmZmVyID0gKHVuc2lnbmVkIGxvbmcpZGF0YTsKICAgIG9iai0+bGVuZ3RoID0gbGVu
OwogICAgb2JqLT5wYXJlbnQgPSBwYXJlbnRfaWQ7CiAgICBvYmotPnBhcmVudF9vZmZzZXQgPSBw
YXJlbnRfb2Zmc2V0OwogICAgYmlvLT5idWZmZXJzX3NpemUgKz0gKGxlbis3KSZ+N1VMOyAvLyBU
T0RPIHJvdW5kaW5nIGJsYXJnaAp9Cgp2b2lkIGJpb19wdXRfZmRhKHN0cnVjdCBiaW5kZXJfaW8g
KmJpbywgaW50ICpmZHMsIGludCBmZF9jb3VudCkgewogICAgaW50IGJ1Zl9pZCA9IC0xOwogICAg
YmlvX3B1dF9idWYoYmlvLCBmZHMsIHNpemVvZihpbnQpKmZkX2NvdW50LCAmYnVmX2lkKTsKICAg
IGlmIChidWZfaWQgPT0gLTEpIGVycngoMSwgImJpb19wdXRfYnVmIGZhaWwiKTsKICAgIHN0cnVj
dCBiaW5kZXJfZmRfYXJyYXlfb2JqZWN0ICpvYmo7CiAgICBvYmogPSBiaW9fYWxsb2NfZmRhKGJp
byk7CiAgICBpZiAoIW9iaikKICAgICAgICByZXR1cm47CiAgICBvYmotPmhkci50eXBlID0gQklO
REVSX1RZUEVfRkRBOwogICAgb2JqLT5udW1fZmRzID0gZmRfY291bnQ7CiAgICBwcmludGYoImZk
YS0+cGFyZW50ID0gJWRcbiIsIGJ1Zl9pZCk7CiAgICBvYmotPnBhcmVudCA9IGJ1Zl9pZDsKICAg
IG9iai0+cGFyZW50X29mZnNldCA9IDA7Cn0KCnZvaWQgYmlvX3B1dF9yZWYoc3RydWN0IGJpbmRl
cl9pbyAqYmlvLCB1aW50MzJfdCBoYW5kbGUpCnsKICAgIHN0cnVjdCBmbGF0X2JpbmRlcl9vYmpl
Y3QgKm9iajsKICAgIGlmIChoYW5kbGUpCiAgICAgICAgb2JqID0gYmlvX2FsbG9jX29iaihiaW8p
OwogICAgZWxzZQogICAgICAgIG9iaiA9IGJpb19hbGxvYyhiaW8sIHNpemVvZigqb2JqKSk7CiAg
ICBpZiAoIW9iaikKICAgICAgICByZXR1cm47CiAgICBvYmotPmZsYWdzID0gMHg3ZiB8IEZMQVRf
QklOREVSX0ZMQUdfQUNDRVBUU19GRFM7CiAgICBvYmotPmhkci50eXBlID0gQklOREVSX1RZUEVf
SEFORExFOwogICAgb2JqLT5oYW5kbGUgPSBoYW5kbGU7CiAgICBvYmotPmNvb2tpZSA9IDA7Cn0K
dm9pZCBiaW9fcHV0X3N0cmluZzE2KHN0cnVjdCBiaW5kZXJfaW8gKmJpbywgY29uc3QgdWludDE2
X3QgKnN0cikKewogICAgc2l6ZV90IGxlbjsKICAgIHVpbnQxNl90ICpwdHI7CiAgICBpZiAoIXN0
cikgewogICAgICAgIGJpb19wdXRfdWludDMyKGJpbywgMHhmZmZmZmZmZik7CiAgICAgICAgcmV0
dXJuOwogICAgfQogICAgbGVuID0gMDsKICAgIHdoaWxlIChzdHJbbGVuXSkgbGVuKys7CiAgICBp
ZiAobGVuID49IChNQVhfQklPX1NJWkUgLyBzaXplb2YodWludDE2X3QpKSkgewogICAgICAgIGJp
b19wdXRfdWludDMyKGJpbywgMHhmZmZmZmZmZik7CiAgICAgICAgcmV0dXJuOwogICAgfQogICAg
LyogTm90ZTogVGhlIHBheWxvYWQgd2lsbCBjYXJyeSAzMmJpdCBzaXplIGluc3RlYWQgb2Ygc2l6
ZV90ICovCiAgICBiaW9fcHV0X3VpbnQzMihiaW8sICh1aW50MzJfdCkgbGVuKTsKICAgIGxlbiA9
IChsZW4gKyAxKSAqIHNpemVvZih1aW50MTZfdCk7CiAgICBwdHIgPSBiaW9fYWxsb2MoYmlvLCBs
ZW4pOwogICAgaWYgKHB0cikKICAgICAgICBtZW1jcHkocHRyLCBzdHIsIGxlbik7Cn0KCnZvaWQg
YmlvX3B1dF9jc3RyaW5nKHN0cnVjdCBiaW5kZXJfaW8gKmJpbywgY29uc3QgY2hhciAqc3RyKQp7
CiAgICBjaGFyKiBwdHIgPSBOVUxMOwogICAgc2l6ZV90IGxlbiA9IDA7CgogICAgbGVuID0gc3Ry
bGVuKHN0cikgKyAxOwogICAgcHRyID0gYmlvX2FsbG9jKGJpbywgbGVuKTsKICAgIGlmIChwdHIp
CiAgICAgICAgbWVtY3B5KHB0ciwgc3RyLCBsZW4pOwp9Cgp2b2lkIGJpb19wdXRfc3RyaW5nMTZf
eChzdHJ1Y3QgYmluZGVyX2lvICpiaW8sIGNvbnN0IGNoYXIgKl9zdHIpCnsKICAgIHVuc2lnbmVk
IGNoYXIgKnN0ciA9ICh1bnNpZ25lZCBjaGFyKikgX3N0cjsKICAgIHNpemVfdCBsZW47CiAgICB1
aW50MTZfdCAqcHRyOwogICAgaWYgKCFzdHIpIHsKICAgICAgICBiaW9fcHV0X3VpbnQzMihiaW8s
IDB4ZmZmZmZmZmYpOwogICAgICAgIHJldHVybjsKICAgIH0KICAgIGxlbiA9IHN0cmxlbihfc3Ry
KTsKICAgIGlmIChsZW4gPj0gKE1BWF9CSU9fU0laRSAvIHNpemVvZih1aW50MTZfdCkpKSB7CiAg
ICAgICAgYmlvX3B1dF91aW50MzIoYmlvLCAweGZmZmZmZmZmKTsKICAgICAgICByZXR1cm47CiAg
ICB9CiAgICAvKiBOb3RlOiBUaGUgcGF5bG9hZCB3aWxsIGNhcnJ5IDMyYml0IHNpemUgaW5zdGVh
ZCBvZiBzaXplX3QgKi8KICAgIGJpb19wdXRfdWludDMyKGJpbywgbGVuKTsKICAgIHB0ciA9IGJp
b19hbGxvYyhiaW8sIChsZW4gKyAxKSAqIHNpemVvZih1aW50MTZfdCkpOwogICAgaWYgKCFwdHIp
CiAgICAgICAgcmV0dXJuOwogICAgd2hpbGUgKCpzdHIpCiAgICAgICAgKnB0cisrID0gKnN0cisr
OwogICAgKnB0cisrID0gMDsKfQoKdm9pZCBiaW9fcHV0X3N0cmluZzhfeChzdHJ1Y3QgYmluZGVy
X2lvICpiaW8sIGNvbnN0IGNoYXIgKl9zdHIpCnsKICAgIHVuc2lnbmVkIGNoYXIgKnN0ciA9ICh1
bnNpZ25lZCBjaGFyKikgX3N0cjsKICAgIHNpemVfdCBsZW47CiAgICB1aW50OF90ICpwdHI7CiAg
ICBpZiAoIXN0cikgewogICAgICAgIGJpb19wdXRfdWludDMyKGJpbywgMHhmZmZmZmZmZik7CiAg
ICAgICAgcmV0dXJuOwogICAgfQogICAgbGVuID0gc3RybGVuKF9zdHIpOwogICAgaWYgKGxlbiA+
PSAoTUFYX0JJT19TSVpFIC8gc2l6ZW9mKHVpbnQ4X3QpKSkgewogICAgICAgIGJpb19wdXRfdWlu
dDMyKGJpbywgMHhmZmZmZmZmZik7CiAgICAgICAgcmV0dXJuOwogICAgfQogICAgLyogTm90ZTog
VGhlIHBheWxvYWQgd2lsbCBjYXJyeSAzMmJpdCBzaXplIGluc3RlYWQgb2Ygc2l6ZV90ICovCiAg
ICBiaW9fcHV0X3VpbnQzMihiaW8sIGxlbik7CiAgICBwdHIgPSBiaW9fYWxsb2MoYmlvLCAobGVu
ICsgMSkgKiBzaXplb2YodWludDhfdCkpOwogICAgaWYgKCFwdHIpCiAgICAgICAgcmV0dXJuOwog
ICAgd2hpbGUgKCpzdHIpCiAgICAgICAgKnB0cisrID0gKnN0cisrOwogICAgKnB0cisrID0gMDsK
fQpzdGF0aWMgdm9pZCAqYmlvX2dldChzdHJ1Y3QgYmluZGVyX2lvICpiaW8sIHNpemVfdCBzaXpl
KQp7CiAgICBzaXplID0gKHNpemUgKyAzKSAmICh+Myk7CiAgICBpZiAoYmlvLT5kYXRhX2F2YWls
IDwgc2l6ZSl7CiAgICAgICAgYmlvLT5kYXRhX2F2YWlsID0gMDsKICAgICAgICBiaW8tPmZsYWdz
IHw9IEJJT19GX09WRVJGTE9XOwogICAgICAgIHJldHVybiBOVUxMOwogICAgfSAgZWxzZSB7CiAg
ICAgICAgdm9pZCAqcHRyID0gYmlvLT5kYXRhOwogICAgICAgIGJpby0+ZGF0YSArPSBzaXplOwog
ICAgICAgIGJpby0+ZGF0YV9hdmFpbCAtPSBzaXplOwogICAgICAgIHJldHVybiBwdHI7CiAgICB9
Cn0KdWludDMyX3QgYmlvX2dldF91aW50MzIoc3RydWN0IGJpbmRlcl9pbyAqYmlvKQp7CiAgICB1
aW50MzJfdCAqcHRyID0gYmlvX2dldChiaW8sIHNpemVvZigqcHRyKSk7CiAgICByZXR1cm4gcHRy
ID8gKnB0ciA6IDA7Cn0KdWludDE2X3QgKmJpb19nZXRfc3RyaW5nMTYoc3RydWN0IGJpbmRlcl9p
byAqYmlvLCBzaXplX3QgKnN6KQp7CiAgICBzaXplX3QgbGVuOwogICAgLyogTm90ZTogVGhlIHBh
eWxvYWQgd2lsbCBjYXJyeSAzMmJpdCBzaXplIGluc3RlYWQgb2Ygc2l6ZV90ICovCiAgICBsZW4g
PSAoc2l6ZV90KSBiaW9fZ2V0X3VpbnQzMihiaW8pOwogICAgaWYgKHN6KQogICAgICAgICpzeiA9
IGxlbjsKICAgIHJldHVybiBiaW9fZ2V0KGJpbywgKGxlbiArIDEpICogc2l6ZW9mKHVpbnQxNl90
KSk7Cn0KY2hhciAqYmlvX2dldF9zdHJpbmc4KHN0cnVjdCBiaW5kZXJfaW8gKmJpbywgc2l6ZV90
ICpzeikgewogICAgc2l6ZV90IGxlbjsKICAgIC8qIE5vdGU6IFRoZSBwYXlsb2FkIHdpbGwgY2Fy
cnkgMzJiaXQgc2l6ZSBpbnN0ZWFkIG9mIHNpemVfdCAqLwogICAgbGVuID0gKHNpemVfdCkgYmlv
X2dldF91aW50MzIoYmlvKTsKICAgIGlmIChzeikKICAgICAgICAqc3ogPSBsZW47CiAgICByZXR1
cm4gYmlvX2dldChiaW8sIGxlbiArIDEpOyAgCn0Kc3RhdGljIHN0cnVjdCBmbGF0X2JpbmRlcl9v
YmplY3QgKl9iaW9fZ2V0X29iaihzdHJ1Y3QgYmluZGVyX2lvICpiaW8pCnsKICAgIHNpemVfdCBu
OwogICAgc2l6ZV90IG9mZiA9IGJpby0+ZGF0YSAtIGJpby0+ZGF0YTA7CiAgICAvKiBUT0RPOiBi
ZSBzbWFydGVyIGFib3V0IHRoaXM/ICovCiAgICBmb3IgKG4gPSAwOyBuIDwgYmlvLT5vZmZzX2F2
YWlsOyBuKyspIHsKICAgICAgICBpZiAoYmlvLT5vZmZzW25dID09IG9mZikKICAgICAgICAgICAg
cmV0dXJuIGJpb19nZXQoYmlvLCBzaXplb2Yoc3RydWN0IGZsYXRfYmluZGVyX29iamVjdCkpOwog
ICAgfQogICAgYmlvLT5kYXRhX2F2YWlsID0gMDsKICAgIGJpby0+ZmxhZ3MgfD0gQklPX0ZfT1ZF
UkZMT1c7CiAgICByZXR1cm4gTlVMTDsKfQp1aW50MzJfdCBiaW9fZ2V0X3JlZihzdHJ1Y3QgYmlu
ZGVyX2lvICpiaW8pCnsKICAgIHN0cnVjdCBmbGF0X2JpbmRlcl9vYmplY3QgKm9iajsKICAgIG9i
aiA9IF9iaW9fZ2V0X29iaihiaW8pOwogICAgaWYgKCFvYmopCiAgICAgICAgcmV0dXJuIDA7CiAg
ICBpZiAob2JqLT5oZHIudHlwZSA9PSBCSU5ERVJfVFlQRV9IQU5ETEUpCiAgICAgICAgcmV0dXJu
IG9iai0+aGFuZGxlOwogICAgcmV0dXJuIDA7Cn0KCgp1aW50MzJfdCBiaW9fZ2V0X3JlZl9jb29r
aWUoc3RydWN0IGJpbmRlcl9pbyAqYmlvLCB1aW50NjRfdCogY29va2llKSB7CiAgICBzdHJ1Y3Qg
ZmxhdF9iaW5kZXJfb2JqZWN0ICpvYmo7CiAgICBvYmogPSBfYmlvX2dldF9vYmooYmlvKTsKICAg
IGlmICghb2JqKQogICAgICAgIHJldHVybiAwOwogICAgaWYgKG9iai0+aGRyLnR5cGUgPT0gQklO
REVSX1RZUEVfSEFORExFIHx8IG9iai0+aGRyLnR5cGUgPT0gQklOREVSX1RZUEVfV0VBS19IQU5E
TEUpIHsKICAgICAgICAqY29va2llID0gb2JqLT5jb29raWU7CiAgICAgICAgcmV0dXJuIG9iai0+
aGFuZGxlOwogICAgfQogICAgcmV0dXJuIDA7Cn0=
--000000000000350cdc0594a9a4ad
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--000000000000350cdc0594a9a4ad--
